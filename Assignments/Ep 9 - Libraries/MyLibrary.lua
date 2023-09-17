-- TODO: create your own function library that works similarly to default Luau libraries

-- create a dictionary of some random functions. the functions can do anything
local Library = {
    SomeFunction = function(toPrint)
        print("function used", toPrint)
    end,

    Double = function(number)
        return number * 2
    end,

    Triple = function(number)
        return number * 3
    end,

    AscendingOrder = function(array)
        table.sort(array, function(a, b)
            return a < b
        end)
    end,

    DescendingOrder = function(array)
        table.sort(array, function(a, b)
            return a > b
        end)
    end,
}

-- use functions from your library like you would use the math/table libraries

local DoubledNumber = Library.Double(5)
print(DoubledNumber) -- should print out 10

local TripledNumber = Library.Triple(5)
print(TripledNumber) -- should print out 15

local array = {3, 9, 12, 4, 5}

Library.AscendingOrder(array)
print(array)

Library.DescendingOrder(array)
print(array)

Library.SomeFunction("hi")
