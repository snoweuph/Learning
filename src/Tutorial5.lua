-- Loops
a = {"a", "b", "c", "d", "e"}

-- for loops
for i = 1, #a do
    print(i)
end
print("\n")

for i = 1, 3, 0.25 do
    print(i)
end
print("\n")

for i = 5, 0, -1 do
    print(i)
end
print("\n")

-- while loops
i = 1
while a[i] do
    print(a[i])
    i = i + 1 --there is no ++ incrementation in lua and small writing like += is also not supported
end