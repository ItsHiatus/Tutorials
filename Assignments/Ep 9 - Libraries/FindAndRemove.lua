-- local array = {"hi", "hi", "hi", "hi", "hi"}
local array = table.create(5, "hi")

array[math.random(#array)] = "bye"

print(array)

-- TODO: remove intruding "bye" from the array using the table library

local key = table.find(array, "bye") -- search for "bye" in the array and get its key

if key ~= nil then
    table.remove(array, key) -- remove the key from the table if it exists
end

print(array)
