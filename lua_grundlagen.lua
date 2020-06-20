--globale_variable = "Globales Hello World"
--local lokale_variable = "Lokales Hello World"

---- show event 4

---- /run print(globale_variable)
---- /run print(lokale_variable)


---- /reload
------------------------------------------------------------------------------
---- show event 4 ende
--local myArray = {"value1", "value2", "value3"}
--print("array: "..myArray[2])

---- Ausgabe: value2
---- show event 1



--local myHash = {eins="hashValue1", zwei="hashValue2", drei="hashValue3"}

--print("hash: "..myHash["zwei"])
---- Kann man aber noch viel cooler schreiben:
--print("cool hash: "..myHash.zwei)

---- show event 2


---- In lua gibt es aber keine Hashes und Arrays sondern nur Tables...

--local myTable = {"value1", [2]="value2", drei="value3"}



---------------------------------------------------------------------------------
---- Funktionen

--function machEtwas()
--	print("ich gebe etwas aus")
--end 

--machEtwas()

-----------------------------------------------------------------------------------
--local myTable = {"value1", [2]="value2", drei="value3"}

--function myTable.machEtwas(table)
--	print("ich gebe etwas anderes aus: "..table.drei)
--end 

--myTable.machEtwas(myTable)


--function myTable:machEtwas()
--	print("ich gebe etwas anderes aus: "..self.drei)
--end 

--myTable:machEtwas()




-----------------------------------------------------------------------------------------------------
---- Return values

--function getValue()
--	return "zwei"
--end

--print(getValue())


--function returnTable()
--	return {"eins","zwei"}
--end

--print(returnTable()[2])

-----------

--function returnMultipleParams()
--	return "eins", "zwei"
--end
	
--local eins, zwei = returnMultipleParams()
--print(zwei)

--print(select(2,returnMultipleParams()))

---------------------------------------------------------------------------------------------------------


---- loops:

--local myTable = {[0]="v0", "v1", [2]="v2", d="v3", [4]="v4"}


---- ipairs vs pairs

--for index, value in pairs(myTable) do
--	print(value)
--end

---- show event 5

--for index, value in ipairs(myTable) do
--	print(value)
--end

---- show event 6





