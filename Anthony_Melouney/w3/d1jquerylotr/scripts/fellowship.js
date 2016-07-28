console.log("Linked.");

// Dramatis Personae
var hobbits = [
  'Frodo Baggins',
  'Samwise \'Sam\' Gamgee',
  'Meriadoc \'Merry\' Brandybuck',
  'Peregrin \'Pippin\' Took'
];

var buddies = [
  'Gandalf the Grey',
  'Legolas',
  'Gimli',
  'Strider',
  'Boromir'
];

var lands = ['The Shire', 'Rivendell', 'Mordor'];
var body = document.body;

var a1 = $('<article>').text(lands[0]);
var a2 = $('<article>').text(lands[1]);
var a3 = $('<article>').text(lands[2]);

var section = $('<section>', { id: 'wfjhwb' });

section.append(a1);
section.append(a2);
section.append(a3);

//Part 1
var makeMiddleEarth = function () {
   // create a section tag with an id of `middle-earth`
   $( '<section>', {id: 'middle-earth!'});

   // add each land as an `article` tag
   $( 'article'), {'Mordor'}
   $( 'article'), {'Rivendell'}
   $( 'article'), {'The Shire'}

   // inside each `article` tag include an `h1` with the name of the land
   // append `middle-earth` to your document `body`
};

makeMiddleEarth();

//Part 2
var makeHobbits = function () {
   // display an `unordered list` of hobbits in the shire
   <ul>
      // (which is the second article tag on the page)
   // give each hobbit a class of `hobbit`
};

//Part 3

var keepItSecretKeepItSafe = function () {
   // create a div with an id of `'the-ring'`
   // give the div a class of `'magic-imbued-jewelry'`
   // add the ring as a child of `Frodo`
};

//Part 4

var makeBuddies = function () {
   // create an `aside` tag
   // attach an `unordered list` of the `'buddies'` in the aside
   // insert your aside as a child element of `rivendell`
};

//Part 5

var beautifulStranger = function () {
   // change the `'Strider'` text to `'Aragorn'`
};

//Part 6

var leaveTheShire = function () {
   // assemble the `hobbits` and move them to `rivendell`
};

//Part 7

var forgeTheFellowShip = function () {
   // create a new div called `'the-fellowship'` within `rivendell`
   // add each `hobbit` and `buddy` one at a time to `'the-fellowship'`
   // after each character is added make an alert that they // have joined your party
};

//Part 8

var theBalrog = function () {
   // change the `'Gandalf'` text to `'Gandalf the White'`
   // apply the following style to the element, make the // background 'white', add a grey border
};

//Part 9

var hornOfGondor = function () {
   // pop up an alert that the horn of gondor has been blown
   // Boromir's been killed by the Uruk-hai!
   // Remove `Boromir` from the Fellowship
};

//Part 10

var itsDangerousToGoAlone = function (){
   // take `Frodo` and `Sam` out of the fellowship and move // them to `Mordor`
   // add a div with an id of `'mount-doom'` to `Mordor`
};

//Part 11

 var weWantsIt = function () {
   // Create a div with an id of `'gollum'` and add it to Mordor
   // Remove `the ring` from `Frodo` and give it to `Gollum`
   // Move Gollum into Mount Doom
};

//Part 12

var thereAndBackAgain = function () {
   // remove `Gollum` and `the Ring` from the document
   // Move all the `hobbits` back to `the shire`
};
