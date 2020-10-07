## Chapter 1

### Basic types

-   **nil:** The absence of data. This type represents literal nothingness. If a certain piece of data is invalid or unknown, nil is usually the best way to represent that it is invalid or unknown.
-   **Boolean:** A value of true or false. A Boolean value is binary and can only ever be in one of two states, true or false.
-   **number:** A number can represent any real number: 0, -1, 5, or even decimals such as 3.14159265359.
-   **string:** A string is an array of characters. When declaring a string literal, it must be "enclosed within quotation marks."
-   **function:** A function is some code that is referred to by a name and can be executed any time.
-   **table:** A table contains information using key-value pairs. Tables will be covered in depth in Chapter 3, Tables and Objects. Tables are powerful enough to implement other data structures, such as lists, queues, or stacks.
-   **userdata:** Complex data structures defined in the C programming language.
-   **thread:** Threads can be used to execute code in parallel. Instead of your code running one set of commands, it can run several sets of commands at the same time.

### String Concatenation

```lua
"Jack" .. " and Jill" .. " went up the hill"
```

### String coercion

```lua
pi = 3.14
message = "The rounded value of pi is: " .. pi
print(message)
```

### Console interactions

```lua
print ("Please enter your name:")
name = io.read()
print ("Hello " .. name)
```

### Returning multiple values

```lua
function SquareAndCube(x)
  squared = x * x
  cubed = x * x * x
  return squared, cubed
end

s, c = SquareAndCube(2)
print ("Squared: " .. s)
-- will print: Squared: 4

print ("Cubed: " .. c)
-- will print: Cubed: 8
```

### misc operators

```lua
print ("Enter a word: ")
word = io.read();
print (word .. " has " .. #word .. " letters!")

-- user enters Bingo
-- Bingo has 5 letters!
```

### Control Structures

```lua
if condition then
-- do something
end
```

### for loops

```lua
for variable = initial_exp, final_exp, step_exp do
  -- Chunk
end
```

```lua
for i = 0, 10 do
	print ( i )
end

-- will print 0 through 10
```

## Chapter 2

### Tables

The only data structure in lua – tables are powerful enough to implement other data structures, such as lists, queues, or stacks.

A table is a key value pair.

If the keys to the table are numeric the table is an array.

If the keys to the table are non-numeric the table is a dictionary.

```lua
tbl = {}
-- Creates table, assigns it to tbl variable

print("The type of a table is: " .. type(tbl))
-- The type of a table is table

tbl2 = {x = 10, y = 20}
tbl["tbl2"] = tbl2;
print("table2 x", tbl2["x"])
print("table2 y", tbl2["y"])
print(tbl["tbl2"]["x"])
print("table2 dot syntax\n", "x: ", tbl2.x, "y: ", tbl2.y)

-- output:
-- table2 x        10
-- table2 y        20
-- 10
-- table2 dot syntax
--         x:      10      y:      20

-- valid ways of creating and assigning values in a table
colors = {r = "#ff0000", ["g"] = "#00ff00", [3] = "#0000ff"}

print("red: " .. colors.r)
print("green: " .. colors.g)
print("blue: " .. colors[3])

-- output:
-- red: #ff0000
-- green: #00ff00
-- blue: #0000ff
```

### Value (assigned in different memory) and Reference (assigned to same memory)

Variables are assigned by value:

```lua
x = 10
y = x -- creates new memory for y
x = 20

print(x, y)
-- output:
-- 20, 10
```

Tables assign values by reference:

```lua
myTable = { a = 10, b = 20}
myOtherTable = myTable

myTable.a = 13
print(myOtherTable.a)
-- output: 13

myTable.b = 1
print(myOtherTable.b)
-- output: 1
```

### Arrays

```lua
arr = { "monday", "tuesday", "wednesday" }

for i=1,3 do
    print (arr[i])
end
```

### Arrays are one based

When indexing through arrays they start at 1 (not 0 like C or Javascript).
