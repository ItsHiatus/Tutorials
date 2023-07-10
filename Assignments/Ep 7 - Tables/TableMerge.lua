-- Solution 1
local function merge(a, b)
    local merged = {} -- construct new table
    
    for key, value in a do
        merged[key] = value -- add all values from the first table to 'merged' table
    end
    
    -- second table's keys also start from one, so we need to calculate where its keys should start from in the merged table
    local key_offset = #a -- number of keys in the first table (so the last key)
    
    for key, value in b do
        merged[key + key_offset] = value -- add all values from the second table to 'merged' table, at the correct key positions
    end
    
    return merged -- return new merged table
end

local a = {1, 2}
local b = {3, 4}

local merged = merge(a, b)
print(merged)



-- Solution 2 (you can also do it like this...)

local function merge(a, b)
    local merged = {} -- construct new table
    
    for _, tbl in {a, b} do -- loop through both tables
        for key, value in tbl do
            merged[#merged + 1] = value -- add in each table's values to the merged table at the next avaiable key
        end
    end
    
    return merged  -- return new merged table
end

local a = {1, 2}
local b = {3, 4}

local merged = merge(a, b)
print(merged)
