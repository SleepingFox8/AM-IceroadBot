--Made By BennyZ, Converted to Lua by Kayla and Infra_ SleepingFox8

-- initialization
    -- import dependancies
        botTools = require ("AM-Tools/botTools")
        compTools = require ("AM-Tools/compTools")

    -- toggle script off if user requests
        if compTools.anotherInstanceOfThisScriptIsRunning() then
            compTools.stopOtherInstancesOfThisScript()
            log("&7[&fBots&7] &6* &cVECTORING...")
            botTools.freezeAllMotorFunctions()
            -- silently end this script
                return 0
        end

-- main program
    --initialize MAIN table
    --Stores variables for just MAIN function
        local MAIN = {}

    log("&7[&fBots&7] &6* &aVECTORING...")
    while(true) do 
        -- Snap to nearest 45 degree angle
            MAIN.player = getPlayer()
            look(math.floor((MAIN.player.yaw+22.5)/45)*45, 0)
        -- Sprint Jump
            forward(-1)
            sprint(true)
            jump()
            sleep(50)
        -- eat if hungry
            botTools.eatIfHungery()
    end