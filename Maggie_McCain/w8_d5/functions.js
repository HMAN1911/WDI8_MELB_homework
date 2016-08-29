// Question 1 WORKS
function maxOfTwoNumbers(num1, num2) {
  if (num1 > num2) {
    console.log(num1);
  } else {
    console.log(num2);}
}

// Question 2 WORKS
function maxOfThree(num1, num2, num3) {
  // var numArr = [num1, num2, num3]
  // numArr.
  if ((num1 > num2) && (num1 > num3))
    console.log(num1);
  else if (num2 > num3)
    console.log(num2);
  else
    console.log(num3);
}

// Question 3 WORKS
function isCharacterAVowel(letter) {
if (letter.match(/[aeiouyw]/gi) == null)
  return false;
else
  return true;
}

// Question 4 WORKS
function sumArray(numArr) {
  var total = 0;
  for (var i = 0; i < numArr.length; i++) {
    total +=numArr[i]
  }
  console.log(total);
}


// Question 4 WORKS
function multiplyArray(numArr) {
  var total = 1;
  for (var i = 0; i < numArr.length; i++) {
    total *=numArr[i]
  }
  console.log(total);
}


// Question 5 WORKS
var numberOfArguments = function(){
  console.log(arguments.length);
}



// Question 6 WORKS
var reverseString = function (str){
  return str.split('').reverse().join('')
};


// Question 7 WORKS
function findLongestWord (arr) {
  var longest = '';
  for (var i = 0; i < arr.length; i++) {
    if (arr[i].length > longest.length) {
      longest = arr[i];
    }
  }
  console.log(longest);
}

// Question 8 WORKS
function filterLongWords (arr, i) {
var longWords = [];
for (var i = 0; i < arr.length; i++) {
  if (arr[i].length > i) {
    longWords.push(arr[i]);
  }
}
console.log(longWords);
}


// Bonus 1
String.prototype.reverseString = function () {
  return this.split("").reverse().join("");
}



// Bonus 2
function charactersOccurencesCount(str) {
var objReturn = {};
var str = str.toLowerCase().split('')
str.forEach(function(element, index) {
  if (element == ' ') {
  }else if (objReturn[element] == undefined) {
    objReturn[element] = 1;
  }else {
      objReturn[element] += 1;
  }
})
return objReturn;
}

//alternate approach
// function charactersOccurencesCount(string) {
//   occuranceCount = {};
//   for (var i = 0; i < string.length; i++) {
//     var occuranceCheck = string.match(string[i]);
//     occuranceCount[ string[i] ] = occuranceCheck.length;
//   }
//   return occuranceCount
// };
