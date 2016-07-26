#Hash Exercise

#A
#1. a[1]
#2. a.push("Andrew")

#B
#1 h[1]
#2 h[:two]
#3 h['two']
#4 h[3] = "Three"
#5 h[:four] = "4"

#C
#1 "It's True"
#2 "It's a False"
#3 "It's a False"
#4 nil
#5 nil

#D
#1 users["Jonathan"][:twitter]
#2 users["Erik"][:favorite_numbers].push("7")
#3 users["Andrew"] = {}
#4 users["Erik"][:favorite_numbers]
#5 users["Erik"][:favorite_numbers].min
#6 users["Anil"][:favorite_numbers].each { |value|puts value if value.to_f%2==0} OR users["Anil"][:favorite_numbers].select { |number| number.even?}
#7 users["Anil"][:favorite_numbers] & users["Erik"][:favorite_numbers] & users["Jonathan"][:favorite_numbers]
#8 (users["Anil"][:favorite_numbers] + users["Erik"][:favorite_numbers] + users["Jonathan"][:favorite_numbers]).uniq.sort

# Bonus
a = ["Andrew", "Sam", "Dean", "Magda", "Tad", "Anthony", "Jordan", "Dennis"]
groupsOf = 3

people = a
numLeftOver = people.length % groupsOf
leftOverArr = people.pop(numLeftOver)
people = people.each_slice(groupsOf).to_a

i = 0
while i < leftOverArr.length
  people[i].push(leftOverArr[i])
  i += 1
end
