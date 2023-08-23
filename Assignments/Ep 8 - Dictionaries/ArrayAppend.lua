-- Solution
local function Insert(array, value)
	local next_key = #array + 1   -- get the next key of the array by getting its length + 1
	array[next_key] = value       -- insert the new value at the next key
end

-- Usage

local letters = {"a", "b"}

Insert(letters, "c")
Insert(letters, "d")

print(letters[3]) --> "c"
print(letters[4]) --> "d"
