meta = {}

meta.__add = function (left, right)
    return left.value + right
end

container = {
    value = 5
}

-- result = container + 4
-- print("does not work: " .. result)

setmetatable(container, meta)
result = container + 4
print("works: " .. result)