----------------------------------------------------------------
-- GTG- Mission-Skip CET Mod
-- Loads and executes exec.lua when a hotkey is pressed
----------------------------------------------------------------

-- Full path to the file inside the mod folder
local questFilePath = "exec.lua"

-- Register the hotkey
registerHotkey("mission_skip_hotkey", "Skip Current Mission", function()

-- Try to compile the file as Lua code
local fn, err = loadfile(questFilePath)

if not fn then
    print("[Mission-Skip] ERROR loading exec.lua:")
    print(err)
    Game.GetPlayer():SetWarningMessage("Mission-Skip failed! Check CET log.")
    return
    end

    -- Execute the file
    local success, result = pcall(fn)
    if not success then
        print("[Mission-Skip] ERROR executing exec.lua:")
        print(result)
        Game.GetPlayer():SetWarningMessage("Mission-Skip crashed! Check CET log.")
        return
        end

        print("[Mission-Skip] Quest skipped successfully!")
        Game.GetPlayer():SetWarningMessage("Mission skipped!")
        end)
