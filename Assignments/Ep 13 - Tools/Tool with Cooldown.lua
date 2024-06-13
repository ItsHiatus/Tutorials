local Tool = script.Parent -- this script's Parent should be the Tool for this to be correct

local OnCooldown = false -- create a variable that will tell us if the Tool is on cooldown or not

Tool.Activated:Connect(function()
    if OnCooldown then -- if the Tool is on cooldown...
        print("on cooldown")
        return -- escape the function
    end
    
    OnCooldown = true -- otherwise, set cooldown to true
    
    print("clicked")
    
    local part = Instance.new("Part")
    part.Position = Vector3.new(0, 4, 0)
    part.Parent = workspace
    
    wait(5) -- wait 5 seconds before setting cooldown back to false
    
    OnCooldown = false
end)
