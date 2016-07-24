require 'pry'

A1. a[1]
A2. a.push("Denis")

B1. h[1]
B2. h[:two]
B3. h["two"]
B4. h[3] = "Three"
B5. h[:four] = 4

C1. "It's true!"
C2. "It's false"
C3. "It's false"
C4. nil
C5. nil

D1. users["Jonathan"][:twitter]
D2. users["Erik"][:favorite_numbers].push(7)
D3. users["Denis"] = " "
D4. users["Erik"][:favorite_numbers]
D5. users["Erik"][:favorite_numbers].min
D6. users["Anil"][:favorite_numbers].select.each_with_index { |i| i.even? }

D7.
j = users["Jonathan"][:favorite_numbers]
e = users["Erik"][:favorite_numbers]
a = users["Anil"][:favorite_numbers]

intersection = (j & e & a)

D8.
j = users["Jonathan"][:favorite_numbers]
e = users["Erik"][:favorite_numbers]
a = users["Anil"][:favorite_numbers]

 numbers = (j.concat e.concat a).sort
legends = numbers.uniq
