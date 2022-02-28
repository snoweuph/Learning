-- Functions

function sayHello()
    print("Hello World")
end

sayHello()

function getHello()
    return "Hello World"
end

print(getHello())

function getMultipleValues()
    return "a", "b", "c", "d", "e"
end

a, b, c, d, e = getMultipleValues()

print(a)
print(b)
print(c)
print(d)
print(e)

function getTable(length)
    local t = {}
    for i = 1, length do
        t[i] = i
    end
    return t
end

t = getTable(3)
for i = 1,#t do
    print(t[i])
end

-- function with optional arguments
function getX(x)
    x = x or "x"
    return x
end

print(getX("z"))
print(getX())