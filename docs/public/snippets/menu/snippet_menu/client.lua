-- Example of the jo_libs menu: /tailor opens a tailor shop
-- Documentation: https://docs.jumpon-studios.com/jo_libs/modules/menu/

local hats = {
  { label = "Stetson", price = 12.5, variations = { "Brown", "Black", "Grey" } },
  { label = "Bowler", price = 8, variations = { "Black", "Grey" } },
  { label = "Flat cap", price = 3.25, variations = { "Brown" } },
}

local function createHatsMenu()
  local menu = jo.menu.create("hats", {
    title = "Tailor",
    subtitle = "Hats",
  })

  for _, hat in ipairs(hats) do
    local item
    item = menu:addItem({
      title = hat.label,
      icon = "hats",
      description = "A fine hat for every occasion.",
      price = { money = hat.price },
      data = { hat = hat },
      sliders = {
        { title = "Variation", values = hat.variations },
      },
      statistics = {
        { label = "Warmth", type = "bar", value = { 4 } },
        { label = "Durability", type = "weapon-bar", value = { 70, 100 } },
      },
      onActive = function(currentData)
        print("Preview", currentData.item.data.hat.label)
      end,
      onChange = function(currentData)
        print("Variation", currentData.item.sliders[1].value)
      end,
      onClick = function(currentData)
        print("Buy", currentData.item.data.hat.label, currentData.item.sliders[1].value)
        jo.menu.playAudio("coins")
        -- Update the bought item without rebuilding the menu
        item:updateValue("textRight", "Owned")
        item:deleteValue("price")
        menu:push()
      end,
    })
  end

  menu:send()
end

local function createTailorMenu()
  local menu = jo.menu.create("tailor", {
    title = "Tailor",
    subtitle = "Clothes",
    onBack = function()
      -- Backspace on the first menu: close the menu
      jo.menu.show(false)
    end,
  })

  menu:addItem({
    title = "Hats",
    icon = "hats",
    textRight = tostring(#hats),
    child = "hats", -- opens the "hats" menu
  })
  menu:addItem({
    title = "Coats",
    icon = "coats",
    disabled = true,
    prefix = "lock",
  })
  menu:addItem({
    title = "Leave",
    onClick = function()
      jo.menu.show(false)
    end,
  })

  menu:send()
end

-- The "hats" menu is created the first time it's opened
jo.menu.missingMenuHandler("hats", function()
  createHatsMenu()
  jo.menu.setCurrentMenu("hats")
end)

RegisterCommand("tailor", function()
  if jo.menu.isOpen() then return end
  createTailorMenu()
  jo.menu.setCurrentMenu("tailor", false)
  jo.menu.show(true)
end)
