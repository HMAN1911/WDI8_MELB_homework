//d2 homework

//q1 age calculator
console.log('age calculator');
var currentYear = 2016;
var birthYear = 1900;
var possible age = currentYear - birthYear;

//q2 lfetime supply calculator
console.log('life time supply calculator');
var age = 40;
var maxAge = 135;
var amountPerDay = 24;
var yearsRemaining = maxAge - age;
var daysRemaining = yearsRemaining * 365.25;
var supply = daysRemaining * amountPerDay;
console.log('you will need ' + supply +
' to last you to the age of ' + age);

//q3 geometrizer
console.log('geometrizer');
var radius = 142;
var circumference = 2 * Math.PI * radius;
console.log('circumference is ' + circumference);
var area = Math.PI * radius * radius;
console.log('the area is ' + area;)

//q4 even odd reporter
console.log('even odd reporter');
for (var i = 0; i <= 20; i++)
if (i % 2 === 0) {
  console.log(i + 'is even');
  } else {
  console.log(i + 'is odd');
  }
}

//q5 multiplication tables
console.log('multiplication tables');
for (var i = 0; i <= 10; i++) {
 var multiplyByNine = i * 9;
 console.log(i + ' * 9 = ' + multiplyByNine);
}

//q6 vegan test
console.log('vegan test');
var choice = 'steak';
if (choice === 'fruit salad' ||
    choice === 'tofurkey') {
  console.log('vegan friendly');
} else {console.log('vegan beware');
}
