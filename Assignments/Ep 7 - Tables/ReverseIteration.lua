-- Solution 1

local function reverse(tbl)
    local key = #tbl + 1 -- Keep track of which key to index next. We +1 to it because we -1 when we iterate below

    return function() -- return an iterator function that the for loop will use
        key = key - 1 -- go down to next key, so [6] -> [5]

        if key == 0 then -- if we've reached the end of table..
            return       -- escape
        else
            return key, tbl[key] -- otherwise, return the current key-value pair to the for loop
        end
    end
end

local a = {1, 2, 3, 4, 5}

for key, value in reverse(a) do
    print(key, value)
end
