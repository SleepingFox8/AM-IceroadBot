--Made By BennyZ, Converted to Lua by Kayla and Infra_ SleepingFox8
vectoring = not vectoring           
if not vectoring then 
    log("&7[&fBots&7] &6* &cVECTORING...")
    return end

local minfood = 12

log("&7[&fBots&7] &6* &aVECTORING...")
while(vectoring) do
    player = getPlayer() 

    -- Snap to nearest 45 degree angle
    look(math.floor((player.yaw+22.5)/45)*45, 0)

    -- Sprint Jump
    forward(-1)
    sprint(true)
    jump()
    sleep(50)
   
    -- if hungry...eat.
    if player.hunger <= minfood then
        use(150)
    end

end

forward(1)  -- Stop walking