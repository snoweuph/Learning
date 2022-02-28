
-- Table -> table are kinda like arrays -> they start by 1 not 0 they are also similar to objects in js
names = {}
names[1] = "John"
names[2] = "Mary"
names["admin"] = "Bob"

print(names[1], names[2], names["admin"])
print(names) -- object id
print(#names) -- length of objects with numerical keys (1,2,3,usw.)

user1 = {
    name = "John",
    age = 20,
    friends = {"Mary", "Bob"},
}
user2 = {
    name = "Mary",
    age = 21,
    friends = {"John", "Bob"},
}
user3 = {
    name = "Bob",
    age = 22,
    friends = {"John", "Mary"},
}

users = {user1, user2, user3}

for index, user in ipairs(users) do
    print(index)

    for key, value in pairs(user) do
        print('\t' , key, value)
    end
end