family = {
    "David", "Nicole", "Michele", "Bob", "Fred", "Tiffany", "Linda", "Mauricio"
}

function walk(array)
    local index = 0
    return function()
        index = index + 1
        return array[index]
    end
end

function find(array, condition)
    for item in walk(array) do
        if item == condition then print(item .. " is in the array"); end
    end
end

find(family, "Tiffany")
