// Question 1
function maxOfTwoNumbers(a, b) {
  if (a > b) {
    return a
  } else {
    return b
  }
}

// Question 2
function maxOfThree(a, b, c) {
  if (a > b && a > c) {
    return a
  } else if (b > a && b > c) {
    return b
  } else if (c > a && c > b) {
    return c
  }
}

// Question 3
function isCharacterAVowel(string) {
  var l = string.toLowerCase();
  if (l == "a" || l == "e" || l == "i" || l == "o" || l == "u" ) {
    return true
  } else {
    return false
  }
}

// Question 4
function sumArray(arr) {
  arr.reduce( (n1, n2) => n1 + n2, 0 )
}

// Question 4
function multiplyArray(arr) {
  arr.reduce( (n1, n2) => n1 * n2, 0 )
}


// Question 5
var numberOfArguments = function(){
  return arguments.length;
}



// Question 6
var reverseString = function (stringGoesInHereInCaseYouDidntKnow){
  return stringGoesInHereInCaseYouDidntKnow.split("").reverse().join("");
};


// Question 7
function findLongestWord (findTheLongestWordOutOfAllTheWordsPlacedHere) {
  longestIndex = 0
  for (var i = 0; i < findTheLongestWordOutOfAllTheWordsPlacedHere.length; i++) {
    if (findTheLongestWordOutOfAllTheWordsPlacedHere.length > longestIndex) {
      longestIndex = findTheLongestWordOutOfAllTheWordsPlacedHere.length;
    }
  }
  return longestIndex
}


// Question 8
function filterLongWords (arr, i) {
  longWords = [];
  for (var i = 0; i < arr.length; i++) {
    if ( arr[i].length > i ) {
      longWords.push( arr[i] );
    }
  }
  return longWords;
}


// Bonus 1
String.prototype.reverseString = function () {
  return this.split("").reverse().join("");
}


// Bonus 2
function charactersOccurencesCount(string) {
  occuranceCount = {};
  for (var i = 0; i < string.length; i++) {
    var occuranceCheck = string.match(string[i]);
    occuranceCount[ string[i] ] = occuranceCheck.length;
  }
  return occuranceCount
};
