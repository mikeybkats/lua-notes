-- main file chunk
deary = "hello deary"
print(deary)

do
    -- local chunk
    local deary = "lol wat"
    print(deary)
end

print(deary)

do
    -- a different local chunk
    local deary = "hello meow"
    print(deary)
end

print(deary)
