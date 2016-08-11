//================================   GET
//
$(document).ready(function(){
var wrapper = $('.wrapper')


  $.ajax({
    url: 'http://10.22.3.211:3000/api/dishes',
    method: 'get'
  }).done(function(response){

        response.forEach(function(dish){

        var dishBox = $('<div>');
        dishBox.className = 'dish-box';

        var dishImage = $('<div>');
        dishImage.className = 'dish-image';

        var image = $('<img>');
        image.attr('src', dish.image_url);

        var name = $('<h3>');
        name.html(dish.name);


        var dishInfoBar = $('<div>');



        dishInfoBar.className = 'dish-infoBar';

        dishImage.append(image);
        dishInfoBar.append(name)


        dishBox.append(dishImage);
        dishBox.append(dishInfoBar);


        wrapper.append(dishBox);

    });

});
});
