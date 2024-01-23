local Part = workspace.Part -- make sure you have created a Part in workspace before running the code

-- TODO: slowly fade the Transparency property of the Part from 0 to 1
-- i'll use a numeric for loop

for x = 0, 100, 5 do    -- numeric for loop. 'x' will start from 0 and end at 100, increasing by 5 on each cycle
	
	local new = x / 100      -- make sure to divide it by 100 in this case, so 'x' scales down to land between 0 and 1
	Part.Transparency = new  -- set transparency
	
	wait() -- wait between each cycle, so the fade doesnt look instant
	       -- remember, if you don't give any number of seconds to wait for, it waits for the shortest time possible (usually 1/30 seconds)
	       -- you can insert a higher number to make the loop take longer to finish
	
end

print("done")
