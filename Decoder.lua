-- Config
local length = -9-- Change the length of the generated binary number
local decoder = false -- True if you want to decode the input binary string, False if you want to generate a binary string
local number = 0
local array = {}
local s = 0
-- DO NOT CHANGE ANYTHING BELOW UNLESS YOU KNOW WHAT YOU ARE DOING

function Generator(a)
    for i = 1, math.abs(a), 1 do 
        array[i] = math.random(0, 1)
    end
    s = array[1]
    for j = 2, math.abs(a) do 
        s = s..array[j]  
    end
    return s
end
function decode(b)
    for i = 1, string.len(b) do
        local bit = tonumber(string.sub(b, i, i))
        number = number * 2 + bit
    end
    return number
end
local test = Generator(length)
local ans = decode(test)
print("What is "..test.." in decimal format?")
local re = tonumber(io.read()) -- Convert user input to a number

if re == ans then
    print("Correct!")
else
    print("Incorrect!")
end



