tbl = {}
tbl["wat"] = "lolwat"

print(tbl["wat"])
-- tbl["x"] = 20
-- i = "x"
-- print (tbl["x"])
-- print (tbl[i])

-- tbl = {}
tbl["x"] = 10
tbl[10] = "x"
print("x: " .. tbl["x"])
print("10: " .. tbl[10])

-- tbl = {}
-- tbl["x"] = 20
-- i = "x"
-- print (tbl["x"])
-- print (tbl[i])
-- print (tbl.x)
-- tbl.y = 10
-- print ("x + y: " .. tbl.x + tbl.y)
-- print (tbl["y"])
-- print (tbl.y)

-- tbl = {}
-- -- z is never added to the table!
-- print (tostring(tbl["z"])) -- nil
-- print (tostring(tbl.z)) -- nil

print("The type of a table is: " .. type(tbl))
tbl2 = {x = 10, y = 20}

tbl["tbl2"] = tbl2;

-- table2 = tbl["tbl2"]

-- print(tbl[tbl2])
print("table2 x", tbl2["x"])
print("table2 y", tbl2["y"])
print(tbl["tbl2"]["x"])

print("table2 dot syntax\n", "x: ", tbl2.x, "y: ", tbl2.y)

-- valid ways of creating and assigning values in a table
colors = {r = "#ff0000", ["g"] = "#00ff00", [3] = "#0000ff"}

print("red: " .. colors.r)
print("green: " .. colors.g)
print("blue: " .. colors[3])
