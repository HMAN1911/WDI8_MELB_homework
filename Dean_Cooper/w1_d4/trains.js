
var alamein = ['Flinders Street', 'Richmond', 'East Richmond', 'Burnley', 'Hawthorn', 'Glenferrie']
var glenWaverly = ['Flagstaff', 'Melbourne Central', 'Parliament', 'Richmond', 'Kooyong', 'Tooronga']
var sandringham = ['Southern Cross', 'Richmond', 'South Yarra', 'Prahan', 'Windsor']

var intersectingStation = "Richmond";
var fromLocationSelect = document.getElementById("fromLocation");
var toLocationSelect = document.getElementById("toLocation");
var calculateRouteButton = document.getElementById("calculateRoute");
var visualJourney = document.getElementById("visualJourney");
var stopCountHeading = document.getElementsByTagName('h3')[0];
var visualSeparator = '-->';

addOption = function(selectbox, text, value) {
    var optn = document.createElement("OPTION");
    optn.text = text;
    optn.value = value;
    selectbox.options.add(optn);
}


function populateLocation(dropDownList)
{
  var option;

  addOption(dropDownList,"****ALAMEIN****","****ALAMEIN****")
  for(var index=0;index < alamein.length;index++) {
    addOption(dropDownList,alamein[index],alamein[index])
  }
  addOption(dropDownList,"****GLEN WAVERLY****","****GLEN WAVERLY****")
  for(var index=0;index < alamein.length;index++) {
    addOption(dropDownList,glenWaverly[index],glenWaverly[index])
  }
  addOption(dropDownList,"****SANDRINGHAM****","****SANDRINGHAM****")
  for(var index=0;index < alamein.length;index++) {
    addOption(dropDownList,sandringham[index],sandringham[index])
  }
}

function findStationIndex(station, line){
  var returnValue = line.indexOf(station);
  console.log('findStationIndex (station,retVal)',station,returnValue);
  return returnValue;
}
//debugger

function outputMessage(message) {

  var elem = document.querySelectorAll('ul li');
  for (var i = 0;i<elem.length;i++){
    visualJourney.removeChild(elem[i]);
  }
  var newLi;
  newLi = document.createElement('li');
  newLi.innerHTML = message;
  visualJourney.appendChild(newLi);
}

function outputJourney(stops) {

  var elem = document.querySelectorAll('ul li');

  for (var i = 0;i<elem.length;i++){
    visualJourney.removeChild(elem[i]);
  }


  var newLi;
  for (var index = 0;index < stops.length;index++) {
    newLi = document.createElement('li');
    newLi.innerHTML = stops[index] + '    ' + visualSeparator;
    visualJourney.appendChild(newLi);

  }
stopCountHeading.innerHTML = stops.length + ' total stop(s)';
}

function moveToStationByIndex(indexSource, indexDest, line){
  //var indexSource= findStationIndex(sourceStation, line);
  //var indexDest = findStationIndex(destinationStation, line);
  console.log('moveToStation (sourceStation, destinationStation): ',indexSource,indexDest)

  var finalArray;

  if (indexSource > indexDest){
      finalArray = line.slice(indexDest,indexSource + 1).reverse();
  }
  else {
      finalArray = line.slice(indexSource,indexDest + 1)
  }
  return finalArray;
}


function moveToStation(sourceStation, destinationStation, line){
  var indexSource= findStationIndex(sourceStation, line);
  var indexDest = findStationIndex(destinationStation, line);
  console.log('moveToStation (sourceStation, destinationStation): ',indexSource,indexDest)

  var finalArray;

  if (indexSource > indexDest){
      finalArray = line.slice(indexDest,indexSource + 1).reverse();
  }
  else {
      finalArray = line.slice(indexSource,indexDest + 1)
  }
  return finalArray;
}

function findForeignStationLine(station) {
  var index = findStationIndex(station, alamein);
  if (index != -1){
    return alamein;
  }
  index = findStationIndex(station, glenWaverly);
  if (index != -1){
    return glenWaverly
  }
  return sandringham;
}

  function returnFinalForeignLine(station, line){
    var indexOfRichmond = findStationIndex("Richmond", line);
    var indexOfStation = findStationIndex(station, line);

    //console.log('returnFinalForeignLine (indexOfRichmond, indexOfStation): ',indexOfRichmond,indexOfStation)
    var finalArray;
    //console.log('returnFinalForeignLine (orig array): ' +  line)
    if (indexOfRichmond > indexOfStation){
      //console.log('a');
        finalArray = line.slice(indexOfStation,indexOfRichmond + 1).reverse();
    }
    else {
      //console.log('b');
        finalArray = line.slice(indexOfRichmond,indexOfStation + 1)
    }
    //console.log('returnFinalForeignLine (finalArray array): ',finalArray)
    return finalArray;
  }


//name of line - value is the lines (array);

//check if we need to switch lines or not.
//we can do this by checking which line we are on now and which line we need to go onto

calculateRouteButton.addEventListener('click', calculateRoute);

  populateLocation(fromLocationSelect);
  populateLocation(toLocationSelect);

function calculateRoute() {
  var startStation = fromLocationSelect.value;
  var endStation = toLocationSelect.value

  var currentLine = findForeignStationLine(startStation);
  var destinationLine = findForeignStationLine(endStation);
  var finalJourney = [];

if (startStation === endStation) {
  outputMessage('Start and End station are the same')
}
  else if ((currentLine == destinationLine)||(endStation == intersectingStation))
  {
    console.log('Start and end are on the same line. lets just go there');
    finalJourney = moveToStation(startStation, endStation, currentLine);
    //console.log(finalJourney);
    outputJourney(finalJourney);
  }
  else {
    console.log('we need to switch lines. work out how to get to richmomd first, but dont include it here. so find the station before');

    //stop at the one before richmond.
    var richmondIndex = findStationIndex(intersectingStation, currentLine);
    var startIndex = findStationIndex(startStation, currentLine);
    var stopBeforeRichmondIndex = 0;

    if (startIndex < richmondIndex){
      //need to travel FORWARD to get to richmond
      stopBeforeRichmondIndex = richmondIndex-1
      finalJourney = moveToStationByIndex(startIndex, richmondIndex-1, currentLine);
    }
    else if (startIndex > richmondIndex){
      //travel back
      stopBeforeRichmondIndex = richmondIndex+1
      finalJourney = moveToStationByIndex(startIndex, richmondIndex+1, currentLine);
    }
    else {
      //we are at richmond already.
    }

    console.log(finalJourney);
    var finalJourney2 = returnFinalForeignLine(endStation, destinationLine);

    var finalTotalJourney = finalJourney.concat(finalJourney2);

    outputJourney(finalTotalJourney);
    //console.log(finalTotalJourney);
  }
}




/* doesnt work
start - Burnleys
end - windsor







//concatinate the foreign stops now (including richmond, in the correct order)

//var destinationLine = findForeignStationLine("Windsor");
//var finalLine = returnFinalForeignLine("Windsor", destinationLine);

//console.log('<br/>');
//var destinationLine1 = findForeignStationLine("Burnley");
//var finalLine1 = returnFinalForeignLine("Burnley", destinationLine1);
//console.log(finalLine);


/*



function makeCake() {
  console.log('go to the shop');
  console.log('buy cake');
  console.log('pretend i made it');
}
//makeCake();



function calcArea(radius) {
  var area = Math.PI  * radius * radius
  console.log(area);
  return area;

}

//calcArea(3);
//console.log(calcArea(3));




//  1. Write a function `lengths` that accepts a single parameter as an argument,
//namely
// an array of strings. The function should return
//an array of numbers where each
// number is the length of the corresponding string.

// your code here

// 2. Write a Javascript function called `transmogrifier`
// This function should accept three arguments, which you can assume w
//will be numbers.
// Your function should return the "transmogrified" result
//
// The transmogrified result of three numbers is the
//product of the first two numbers,
// raised to the power of the third number.

// your code here

// 3. Write a function `wordReverse` that accepts a single argument, a string. The
// method should return a string with the order of the words reversed. Don't worry
// about punctuation.

// your code here

function reverse(s) {
  return s.split('').reverse().join('');
}

function lengths(stringArray){

  var returnArray = [];
  for(var i = 0;i<stringArray.length;i++) {
    returnArray.push(stringArray[i].length);
  }
  return returnArray;
}

function transmogrifier(number1, number2, number3){
  var product = number1 * number2;
  return Math.pow(product, number3);
}

function sentenceReverse(word) {
  return word.split(' ').reverse().join(' ');
}


function wordReverse(word) {
  return reverse(word);
}




console.log(lengths(['test', 'wer']));
console.log('transmogrifier : ' + transmogrifier(1,2,22));
console.log('reverse : ' + reverse('hello'));


*/
