globale_variable = "bla"
local lokale_variable = "bla"

local myString = "Hello World"
print(myString)


local myArray = {"value1", "value2", "value3"}
print("array2: "..myArray[2])


local myArray = {[1]="value1", [2]="value2", [3]="value3"}

local myHash = {eins="hashValue1", zwei="hashValue1", drei="hashValue3"}

print("hash2: "..myHash["zwei"])
-- Kann man aber noch viel cooler schreiben:
print("cool hash2: "..myHash.zwei)


-- In lua gibt es aber keine Hashes und Arrays sondern nur Tables...

local myTable = {"value1", [2]="value2", drei="value3"}

-- myTable[1] ist "value1"
-- myTable.drei ist "value3"




function machEtwas()
	print "ich gebe etwas aus"
end 

machEtwas()



function myTable.machEtwas()
	print("ich gebe etwas anderes aus: "..myTable.drei)
end 

myTable.machEtwas()


function myTable.machEtwas(string)
	print("ich gebe etwas anderes aus: "..string)
end 

myTable.machEtwas("parameterString")


function myTable.machEtwas(table)
	print("ich gebe etwas anderes aus: "..table.drei)
end 

myTable.machEtwas(myTable)


function myTable:machEtwas()
	print("ich gebe etwas anderes aus: "..self.drei)
end 

myTable:machEtwas()




---------------------------------------------------------------------------------------------------
-- Return values

function getValue()
	return "zwei"
end

print(getValue())




-- table vs multiple params


function returnTable()
	return {eins="eins",zwei="zwei"}
end

print(returnTable().zwei)


function returnMultipleParams()
	return "eins", "zwei"
end
	
local eins, zwei = returnMultipleParams()
print(zwei)

print(select(2,returnMultipleParams()))

-------------------------------------------------------------------------------------------------------

-- If Statements:
if true then
	print("immer True")
end


if 1==2 then
	print("1 ist gleich 2")
elseif 1~=2 then
	print("1 ist ungleich 2")
end





-- loops:

local myTable = {[0]="value0", "value1", [2]="value2", drei="value3", [4]="value4"}


-- ipairs vs pairs

for index, value in ipairs(myTable) do
	print(value)
end


for index, value in pairs(myTable) do
	print(value)
end



