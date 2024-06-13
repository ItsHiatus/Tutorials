local Tool = script.Parent -- this script's Parent should be the Tool for this to be correct

local Click = 0 -- create a variable that will store how many times the Player has clicked

Tool.Activated:Connect(function()
    print("clicked")
    
    local CurrentClick = Click -- save the current click number in a separate variable, so we can use it to compare
    --print(CurrentClick)
    
    while Click == CurrentClick do -- whilst the click number is the same as the number we stored just above, do:
        local part = Instance.new("Part")
        part.Position = Vector3.new(0, 4, 0)
        part.Parent = workspace
        
        wait(0.1) -- dont forget to wait or it might freeze
    end
    
    --print("stopped. click count is no longer", CurrentClick)
end)

Tool.Deactivated:Connect(function()
    print("released click")
    Click = Click + 1 -- increase the Count once the Player releases their click
end)

Tool.Unequipped:Connect(function()
    print("tool unequipped")
    Click = Click + 1 -- also increase the Count if the Player unequipps their Tool, in case they were holding click
end)
