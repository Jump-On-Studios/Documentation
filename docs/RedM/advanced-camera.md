# 📷 Advanced Camera
Documentation relating to the jo_advanced_camera script.

:::: tabs
::: tab BUY
[Buy the script](https://jumpon-studios.com/redm/advanced-camera)
:::

::: tab PREVIEW
todo
:::
::::

## 1. Installation
 The `jo_advanced_camera` script works on all frameworks.

To install `jo_advanced_camera`:
- Download the library: [jo_libs](https://github.com/Jump-On-Studios/RedM-jo_libs/releases/latest/download/jo_libs.zip)
- Unzip the folder and drop it in your resource folder
- Download `jo_advanced_camera` from your [account](https://jumpon-studios.com/account).
- Unzip the folder and drop it in your resource folder
- Add these ensures in your server.cfg
  - `ensure jo_libs`
  - `ensure jo_advanced_camera`

Congratulation, the **Advanced Camera** script is ready to be used!


## 2. Usage

You can access the advanced camera in three different ways, giving you flexibility in how you launch the tool.

* **Hotkey**: Press the default key, `F6`, to instantly open the camera interface.
* **Pause Menu**: Open the game's pause menu and select the "Photo Mode" option.
* **Command**: Type the `/openPhotoMode` command into the chat.

### Basic Controls

These are the fundamental controls for operating the camera in any mode.

* **Move Camera**: Use `Z`, `Q`, `S`, `D` for horizontal movement, `SPACE` to move up, and `L CTRL` to move down.
* **Adjust Speed**: Scroll the **mouse wheel** to increase or decrease the camera's movement speed.
* **Toggle UI**: Press `C` to hide or show the user interface. This is perfect for taking clean screenshots in Photo Mode or recording footage in Video Mode.
* **Switch Mode**: Press `TAB` to switch between **Photo Mode** and **Video Mode**.
* **Advanced Options**: Press `A` to open the advanced options panel, which contains detailed settings organized into tabs.
* **Exit**: Longpress `ESC` to close the camera interface.

---

### Advanced Options

Pressing `A` opens a menu with detailed controls, allowing you to fine-tune every aspect of your shot.

:::: tabs

::: tab 📷 Lens
The **Lens** tab allows you to adjust the camera's optical properties.

* **In Photo Mode**, you have full control over the **Field of View (FOV)**, **Exposure**, **Focus Distance**, and **Depth of Field (DOF)** to create cinematic, professional-looking stills.
* **In Video Mode**, due to a `SPLINE_CAMERA` limitation, you can only adjust the **FOV**.
:::

::: tab ✨ Filters
In both Photo and Video modes, the **Filters** tab lets you apply a visual filter to your scene. You can select from a list of available filters and use a slider to adjust its **strength** or intensity.
:::

::: tab 🎥 Traveling
The **Traveling** tab is exclusive to **Video Mode** and is used to create smooth, pre-programmed camera movements.

First, you must add waypoints to define the camera's path. While in Video Mode, two new prompts will appear:
* **Add Waypoint (`N`)**: Adds a new point to the camera's path at its current position.
* **Preview Traveling (`J`)**: Plays the camera movement along the defined waypoint track.

Once you have at least two waypoints, a **timeline** will appear at the top of the screen. The Traveling tab allows you to:
* Set the **smoothing function** used by the spline camera for fluid transitions.
* Define the total **traveling time** (in milliseconds) for the entire sequence.
* Toggle a **letterbox** effect for a cinematic aspect ratio.
* View, reorder, view, edit, or delete waypoints from the waypoint list.
:::

::: tab 💾 Presets
The **Presets** tab allows you to save and load your configurations. Presets for Photo Mode and Video Mode are saved separately; you must be in the correct mode to see its associated presets.

* **Photo Mode Preset**: Saves your **Lens** and **Filter** configurations.
* **Video Mode Preset**: Saves your **Lens**, **Filter**, and complete **Traveling** configuration (including waypoints, timing, and smoothing).

You can also share your work easily:
* **Export**: Select a saved preset and click "Export". The preset's code will be copied to your clipboard.
* **Import**: Click "Import" and paste a shared code to add a new preset to your list.

Presets are saved locally on your client using RedM's Key-Value Pair (KVP) system. This means your presets are unique to you on the server and are not shared with other players by default.

:::



::::


:::details Smoothing Functions Reference

#### Smoothing Functions Reference

The smoothing function determines how the camera accelerates and decelerates along the path between waypoints. Choose the appropriate function based on the cinematic effect you want to achieve:

| Name | Spline Name | Description | Curve Visualization |
|------|-----------------|-------------|---------------------|
| No smoothing | NO_SMOOTH | Linear movement with no acceleration or deceleration | ![No smoothing](/images/smoothing-functions/0.png) |
| Smooth lead-in | SLOW_IN_SMOOTH | Gradual acceleration at the start | ![Smooth lead-in](/images/smoothing-functions/1.png) |
| Smooth lead-out | SLOW_OUT_SMOOTH | Gradual deceleration at the end | ![Smooth lead-out](/images/smoothing-functions/2.png) |
| Smooth both | SLOW_IN_OUT_SMOOTH | Gentle acceleration and deceleration | ![Smooth both](/images/smoothing-functions/3.png) |
| Long lead-in | VERY_SLOW_IN | Extended acceleration period | ![Long lead-in](/images/smoothing-functions/4.png) |
| Long lead-out | VERY_SLOW_OUT | Extended deceleration period | ![Long lead-out](/images/smoothing-functions/5.png) |
| Mixed smooth | SLOW_IN_VERY_SLOW_OUT | Short lead-in with long lead-out | ![Mixed smooth](/images/smoothing-functions/7.png) |
| Long both | VERY_SLOW_IN_VERY_SLOW_OUT | Extended acceleration and deceleration | ![Long both](/images/smoothing-functions/8.png) |
| Constant acceleration | EASE_IN | Linear acceleration throughout | ![Constant acceleration](/images/smoothing-functions/9.png) |
| Slow deceleration | QUADRATIC_EASE_OUT | Quadratic ease-out motion | ![Slow deceleration](/images/smoothing-functions/12.png) |
| Enhanced smooth | QUADRATIC_EASE_IN_OUT | Quadratic ease-in and ease-out | ![Enhanced smooth](/images/smoothing-functions/13.png) |
| Smooth deceleration | CUBIC_EASE_OUT | Cubic ease-out for smooth stops | ![Smooth deceleration](/images/smoothing-functions/15.png) |
| Slow acceleration | QUARTIC_EASE_IN | Quartic ease-in for gradual starts | ![Slow acceleration](/images/smoothing-functions/17.png) |
| Slow linger | QUARTIC_EASE_OUT | Quartic ease-out with prolonged end | ![Slow linger](/images/smoothing-functions/18.png) |
| Very long | QUARTIC_EASE_IN_OUT | Quartic ease-in-out for dramatic motion | ![Very long](/images/smoothing-functions/19.png) |
| Gradual acceleration | QUINTIC_EASE_IN | Quintic ease-in for subtle starts | ![Gradual acceleration](/images/smoothing-functions/20.png) |
| Gradual deceleration | QUINTIC_EASE_OUT | Quintic ease-out for subtle stops | ![Gradual deceleration](/images/smoothing-functions/21.png) |
| Fast deceleration | CIRCULAR_EASE_OUT | Circular ease-out for quick stops | ![Fast deceleration](/images/smoothing-functions/24.png) |
| Fast combined | CIRCULAR_EASE_IN_OUT | Circular ease-in-out for dynamic motion | ![Fast combined](/images/smoothing-functions/25.png) |



:::


## 3. Configuration

The Advanced Camera script is highly configurable to suit your server's needs. Configuration is split between the main settings and language translations.

- **Base configuration**: `config.lua` - Contains all default settings
- **Your customizations**: `overwriteConfig.lua` - Override only the specific settings you want to change
- **Language file**: `lang.lua` - Contains all default translations
- **Your translations**: `overwriteLang.lua` - Override only the specific translations you want to change

:::warning
Rather than editing the original config files directly, you should make your changes in `overwriteConfig.lua` and `overwriteLang.lua`. This way, you can easily update the script without losing your customizations.
:::

### Configuration File

:::: tabs
::: tab Configuration properties

| Property                                    | Default Value   | Description                                                |
| ------------------------------------------- | --------------- | -------------------------------------------------------- |
| `Config.openKey`                            | `F6`            | Keybind to open the advanced camera, [find all the controls here](https://docs.jumpon-studios.com/jo_libs/modules/raw-keys/client#keys). Set it to `false` to disable it.  |
| `Config.openFromPauseMenu`                  | `true`          | Can the camera mode be opened via the native prompt inside the game pause menu. Set it to `false` to disable it.  |
| `Config.openCommandName`                    | `openPhotoMode` |The name of the command to open the script (ex: /openPhotoMode). Set it to `false` to disable it.   |                                   
:::

::: tab Configuration file

```lua
Config = {}

Config.openKey = "F6" -- set it to false to disabled
Config.openFromPauseMenu = true -- set it to false to disabled
Config.openCommandName = "openPhotoMode" -- set it to false to disabled
```

:::

::::

### Language File

The script supports full translation through the language system. To override any text in the script:

1. Find the key you want to change in `lang.lua`
2. Add only that key to `overwriteLang.lua` with your new text

Example:

```lua
-- In overwriteLang.lua
Lang.photoMode = "Photo Mode"
Lang.videoMode = "Video Mode"
Lang.failedToDelete = "Failed to delete preset"
```

Available translation categories include:
- General UI & Common Terms
- Menu Titles & Subtitles
- Prompts & Labels
- Input Prompts
- Notifications & Messages (success and error messages)

:::tip 💡Only change the key you need to translate
You only need to include the specific keys you want to change in `overwriteLang.lua`. Don't copy the entire language file.
:::

## 4. For Developers

### Filters

[Filters](/DeveloperResources/filters) allow you to modify data or control permissions during script execution. Introduced in `v1.2.0`, filters provide a **synchronous** way to intercept and modify script behavior at specific points, unlike events which are asynchronous.
  
Below is a complete list of all available filters in the jo_advanced_camera script.

#### <Badge type="server" text="Server" /> canOpenAdvancedCamera
Controls who can open the advanced camera script.

```lua
-- @param canUse - boolean indicating if the action is allowed by default
-- @param source - serverID of the player
exports.jo_advanced_camera:registerFilter('canOpenAdvancedCamera', function(canUse, source)
    -- Example: Only allow admins
    local isAdmin = exports.your_permission_system:isAdmin(source)
    return isAdmin
end)
```

:::details Example of job lock for VORP
```lua
AllowedJobs = {
    photograph = true,
    admin = true,
}

exports.jo_advanced_camera:registerFilter('canOpenAdvancedCamera', function(canUse, source)
    local job = jo.framework:getJob(source)
    if AllowedJobs[job] then
      return canUse
    else
      jo.notif.rightError("You don't have the right job to use the camera script")
      return false
    end
end)
```