-- Solution
local function GetLength(tbl)
	local length = 0 -- start count from zero
	
	for _ in tbl do  -- since we don't need to use the keys or values themselves, we can just use one _ to represent the keys
		length = length + 1 -- ... and increase the length count by 1 for each key the loop iterates over
	end

	return length    -- return the count
end

-- Usage
local a = {
	Health = 100,
	Speed = 15,
	Color = "Red"
}

local length = GetLength(a)
print(length) --> 3

a.State = "Alive" -- adding a new key to the dictionary

length = GetLength(a)
print(length) --> 4
