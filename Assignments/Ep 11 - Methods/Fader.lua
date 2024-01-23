-- TODO: create a part that turns everything it touches invisible!!

-- first, let's create a function that fades parts away

local function Fade(part)

    if object.Transparency < 1 then -- make sure the part isn't transparent already before trying to fade it

        local current = object.Transparency -- store the current Transparency value of the object. this will be what we start the loop from
        local target = 1

        for i = current, target, 0.05 do  -- for loop. starts from number stored in 'current' and ends at number stored in 'target', increasing by 0.05 on each cycle
            part.Transparency = i -- set Transparency
            wait()
        end
        
    end
    
end

-- now, let's grab the part that turns everything invisible from the workspace

local Fader = workspace.Fader

while true do

    local touchingParts = Fader:GetTouchingParts() -- this method returns an array of all objects touching the Fader part
    
    for _, object in touchingParts do -- loop over the array. we don't need the key, so i just put _ to store it in
        -- TODO: now let's fade the object touching the Fader!
        Fade(object)
    end

    wait()

end


--// Cleaner Version \\--

local Fader = workspace.Fader

local function Fade(part)

    if part.Transparency == 1 then
        return -- end the function early if the part is already transparent
    end

    local current = part.Transparency * 100 -- store the transparency and multiply by 100
                                            -- this is to make sure the increment/step of the for loop stays as a whole number (decimals are bad - we'll learn why later)

    for i = current, 100, 5 do     -- goal is 100, and increment is 5
        part.Transparency = i/100  -- scale it back down
        wait()
    end

end

while true do

    for _, object in Fader:GetTouchingParts() do
        Fade(object)
    end

    wait()

end
    
