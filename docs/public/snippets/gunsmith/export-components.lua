-- Temporary documentation exporter. Load inside jo_gunsmith, after client/weaponData.lua.
-- It reads the native customization tree; it does not buy, equip or change weapons.
-- Add these lines to fxmanifest.lua for the development session:
--   client_script "client/dev/export-components.lua"
--   file "client/dev/component-names.txt"
-- Then run gunsmithcomponentsdoc in the RedM F8 console.
-- Output is written to the normal CitizenFX client log.

local exportingComponents = false
local PREFIX = "GUNSMITH_COMPONENTS_DOC_"

local function emit(kind, data)
    print(PREFIX .. kind .. " " .. json.encode(data))
end

RegisterCommand("gunsmithcomponentsdoc", function()
    if exportingComponents then
        emit("ERROR", { message = "An export is already running" })
        return
    end

    local content = LoadResourceFile(GetCurrentResourceName(), "client/dev/component-names.txt")
    if not content then
        emit("ERROR", { message = "Missing client/dev/component-names.txt" })
        return
    end

    local namesByHash = {}
    for line in content:gmatch("[^\r\n]+") do
        local name = line:match("^%s*(COMPONENT_[%w_]+)%s*$")
        if name then
            local hash = joaat(name) & 0xFFFFFFFF
            if namesByHash[hash] and namesByHash[hash] ~= name then
                emit("ERROR", { message = "Component name collision", first = namesByHash[hash], second = name })
                return
            end
            namesByHash[hash] = name
        end
    end
    if not next(namesByHash) then
        emit("ERROR", { message = "No component names found" })
        return
    end

    local models, seen = {}, {}
    for _, definition in ipairs(Config.weapons or {}) do
        local model = type(definition.model) == "string" and definition.model:upper() or nil
        if model and not seen[model] then
            seen[model] = true
            models[#models + 1] = model
        end
    end
    if #models == 0 then
        emit("ERROR", { message = "No configured weapon models" })
        return
    end

    exportingComponents = true
    CreateThread(function()
        local total, withParts = 0, 0
        local ok, err = xpcall(function()
            emit("BEGIN", { schemaVersion = 1, resource = GetCurrentResourceName(), models = models })
            for _, model in ipairs(models) do
                local tree = WeaponData.getParts(joaat(model) & 0xFFFFFFFF)
                local items, order = {}, {}
                if tree and #tree.parts > 0 then
                    withParts = withParts + 1
                    local function record(item, kind, partLabel, pageLabel)
                        item = item & 0xFFFFFFFF
                        local existing = items[item]
                        if existing then
                            -- Prefer a directly offered option over a collection-only member.
                            if existing.kind == "member" and kind == "option" then
                                existing.kind, existing.part, existing.page = kind, partLabel, pageLabel
                            end
                            return
                        end
                        local entry = {
                            model = model,
                            hash = ("0x%08X"):format(item),
                            name = namesByHash[item] or false,
                            label = WeaponData.getText(item) or "",
                            kind = kind,
                            part = partLabel,
                            page = pageLabel
                        }
                        items[item] = entry
                        order[#order + 1] = item
                    end

                    for _, part in ipairs(tree.parts) do
                        local partLabel = WeaponData.getText(part.labelHash) or ""
                        for _, page in ipairs(part.pages) do
                            local pageLabel = WeaponData.getText(page.labelHash) or ""
                            for _, row in ipairs(page.rows) do
                                if row.kind == "option" then
                                    record(row.item, "option", partLabel, pageLabel)
                                elseif row.kind == "collection" then
                                    for _, member in ipairs(row.members or {}) do
                                        record(member, "member", partLabel, pageLabel)
                                    end
                                end
                            end
                        end
                    end
                end
                table.sort(order)
                emit("MODEL", { model = model, items = #order })
                for index, hash in ipairs(order) do
                    emit("ITEM", items[hash])
                    if index % 25 == 0 then Wait(0) end
                end
                total = total + #order
                Wait(0)
            end
            emit("END", { schemaVersion = 1, models = #models, customizableModels = withParts, associations = total })
        end, debug.traceback)

        exportingComponents = false
        if not ok then emit("ERROR", { message = tostring(err) }) end
    end)
end, false)
