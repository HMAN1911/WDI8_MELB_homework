console.log('working');

var $pokeList = $('#pokeList');


//use id to loop through api

$.ajax({
  url: 'http://pokeapi.co/api/v2/pokemon-form/1/',
}).done(function(pokemon){
  console.log(pokemon.name)
  $pokeList.html('i found ' + pokemon.name);

});

console.log('my life has been renewed');
