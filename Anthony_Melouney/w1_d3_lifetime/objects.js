console.log('objects ex');

var recipe = {
  title: 'the suprise',
  serving: 1,
  ingredients: ['apple','banana','pear']
}
console.log(recipe.title);
console.log(recipe.serving);
console.log(recipe.ingredients[0]);
console.log(recipe.ingredients[1]);
console.log(recipe.ingredients[2]);

for (var i=0; i<recipe.ingredients.length; i++) {
  console.log(recipe.ingredients[i]);
}

var books = []

var book1 = {
  title: 'batmanfiles',
  author: 'manning',
  alreadyRead: false
}

books = [book1];

var book2 = {
  title: 'how to make a sandwich',
  author: 'andre',
  alreadyRead: true
}

books = [book1, book2];
books[0]

var books = [{
  title: 'batman files',
  author: 'manning',
  alreadyRead: false
},{
  title: 'how to make a sandwich',
  author: 'andre',
  alreadyRead: true
}];

for (var i = 0; i < books.length; i++) {
  var book = books[i];

  var desc = book.title + ' by ' + book.author;

  if (book.alreadyRead) {
    console.log('already read' + desc);
  } else {
  console.log('go read this' + desc);
  }
}

var movie = {
  title: 'sharknado',
  duration: 100,
  stsrs: ['this guy from 90210', 'sharks']
}

console.log(movie.title);
console.log(movie.duration);
console.log(movie.stars.join(','));
