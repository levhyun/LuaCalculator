function title()
    print("-------------------------------")
    print("|        LuaCalculator        |")
    print("-------------------------------\n")
end

function commandListView()
print("----Arithmetic Command List----")
print("|                             |")
print("|  1. Addition : 덧셈         |")
print("|  2. Subtraction : 뺄셈      |")
print("|  3. Multiplication : 곱셈   |")
print("|  4. Division : 나눗셈       |")
print("|  5. The rest : 나머지       |")
print("|  6. Square : 제곱           |")
print("|  7. Average : 평균          |")
print("|                             |")
print("-------------------------------")
end

function commandNumberInput()
print("\nPlease enter your number.")
number = io.read("*n")
return number
end

function valueInput()
print("\nPlease enter your first vlaue.")
firstValue = io.read("*n")
print("\nPlease enter your second value.")
secondValue = io.read("*n")
return firstValue, secondValue
end

function Addition(a, b)
return a + b 
end

function Subtraction(a, b)
return a - b 
end

function Multiplication(a, b)
return a * b
end

function Division(a, b)
return a / b
end

function TheRest(a, b)
return a % b
end

function Square(a, b)
return a ^ b
end

function Average(a, b)
return (a + b) / 2
end

function valuePrint(command, value1, value2, result)
if command == "Average" then
    print(string.format("\n[%s(%d,%d)]: %f", command, value1, value2, result))
    print("\n")
    return
end
print(string.format("\n[%s(%d,%d)]: %d", command, value1, value2, result))
print("\n")
return
end

function main()
    repeat
    title()
    commandListView()
    number = commandNumberInput()
    value1, value2 = valueInput()
    command = ""
    if number == 1 then
        command = "Addition"
        result = Addition(value1, value2)
    elseif number == 2 then
        command = "Subtraction"
        result = Subtraction(value1, value2)
    elseif number == 3 then
        command = "Multiplication"
        result = Multiplication(value1, value2)
    elseif number == 4 then
        command = "Division"
        result = Division(value1, value2)
    elseif number == 5 then
        command = "The rest"
        result = TheRest(value1, value2)
    elseif number == 6 then
        command = "Square"
        result = Square(value1, value2)
    elseif number == 7 then
        command = "Average"
        result = Average(value1, value2)
    end
    valuePrint(command, value1, value2, result)
    until false
end

main()