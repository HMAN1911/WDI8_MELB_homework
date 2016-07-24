require 'pry'
require './animal.rb'
require './client.rb'
require './shelter.rb'
require './relationship.rb'


# LIMITATIONS -  CREATING AND PUSHING ANIMALS INTO SHELTER OBJECT
# FOR NEXT TIME - THINK ABOUT CHANGING SHELTER OBJECT SO THAT ANIMALS CAN BE CREATED THERE, BOT PUSHED
# OR THINK HOW TO AUTOMATE PROCESS OF ADING ANIMALS, CLIENTS :)


puts "Would you like to see all menu options? (y/n)"
answer = gets.chomp.downcase

while answer == 'y'
  puts "Here is the Menu: "
  puts "\t1. Create Shelter"
  puts "\t2. Create animal"
  # puts "\t0. Display created animals"

  puts "\t3. Create client"
  puts "\t4. Client: add pets he already have"


  puts "\t5. Shelter: add client - choose from created clients"
  puts "\t6. Shelter: add animal - choose from created animals"


  puts "\t7. Client: adopt animal from shelter - choose from shelter animals"
  # puts "\t8. Shelter: remove animal / (provide name) choose from animals in shelter db"


  puts "\t8. Client: give back animal he adopted shelter / (provide name) choose from shelter animals"
  # puts "\t10. Shelter: add animal / (provide name) client gave back to shelter"


  puts "\t9. Shelter: remove client from shelter db"

  puts "\t10. Shelter: display all animals"
  puts "\t11. Shelter: display all clients"


  puts "Wchich option do you choose? (1 - 11)"
  user_choice = gets.chomp.to_i


  case user_choice

  when 1
    shelter = Shelter.new


  when 2                  #WORK ON THAT - SO FAR HARDCODED : UP TO 4 ANIMALS

    animal1 = Animal.new

    puts "would you like to create more animals? (y/n)"
    user_answer = gets.chomp

    while user_answer == 'y'
      animal2 = Animal.new

      puts "would you like to create more animals? (y/n)"
      user_answer = gets.chomp

      while user_answer == 'y'
        animal3 = Animal.new

        puts "would you like to create more animals? (y/n)"
        user_answer = gets.chomp

        while user_answer == 'y'
          animal4 = Animal.new

          puts "would you like to create more animals? (y/n)"
          user_answer = gets.chomp
        end

      end
    end




  when 3
    client1 = Client.new          #WORK ON THAT - SO FAR HARDCODED : UP TO 2 CLIENTS

    puts "would you like to create more clients? (y/n)"
    user_answer = gets.chomp

    while user_answer == 'y'
      client2 = Client.new

      puts "would you like to create more clients? (y/n)"
      user_answer = gets.chomp
    end



  when 4
    puts "Which client would you like to choose? (client1/client2)"
    user_ans = gets.chomp
    if user_ans == 'client1'    #&& client1 != nil
      client1.add_pets
      p client1.pets
    elsif user_ans == 'client2'     #&& client2 != nil
      client2.add_pets
      p client2.pets
    else
      puts "only 2 clients in database"
    end


  when 5
    puts "Which client would you like to add to the shelter database? (client1/client2/all)"
    user_ans = gets.chomp
    if user_ans == 'client1'      # && client1 != nil
      shelter.add_clients(client1)
    elsif user_ans == 'client2'     # && client2 != nil
      shelter.add_clients(client2)
    else
      shelter.add_clients(client1)
      shelter.add_clients(client2)
    end



  when 6
    puts "Which pet would you like to add to the shelter database? (animal1/animal2/animal3/animal4/all)"
    user_ans = gets.chomp
    if  user_ans == 'animal1' && animal1 != nil
      shelter.add_animals(animal1)
    elsif user_ans == 'animal2' && animal2 != nil
      shelter.add_animals(animal2)
    elsif user_ans == 'animal3' && animal3 != nil
      shelter.add_animals(animal3)
    elsif user_ans == 'animal4' && animal4 != nil
      shelter.add_animals(animal4)
    else
      shelter.add_animals(animal1)
      shelter.add_animals(animal2)
      shelter.add_animals(animal3)
      shelter.add_animals(animal4)
    end




  when 7

    puts  "Choose client(client1/client2)"
    answer = gets.chomp

    case answer

    when 'client1'
      puts "Which pet would you like to adopt? (animal1/animal2/animal3/animal4)"
      client_ans = gets.chomp

      if client_ans == 'animal1' && animal1 != nil
        client1.add_pets_shelter(animal1)
        shelter.remove_animals(animal1)
        p client1
      elsif client_ans == 'animal2' && animal2 != nil
        client1.add_pets_shelter(animal2)
        shelter.remove_animals(animal2)
      elsif client_ans == 'animal3' && animal3 != nil
        client1.add_pets_shelter(animal3)
        shelter.remove_animals(animal3)
      elsif client_ans == 'animal4' && animal4 != nil
        client1.add_pets_shelter(animal4)
        shelter.remove_animals(animal4)
      end

    when 'client2'
      puts "Which pet would you like to adopt? (animal1/animal2/animal3/animal4)"
      client_ans = gets.chomp

      if client_ans == 'animal1' && animal1 != nil
        client2.add_pets_shelter(animal1)
        shelter.remove_animals(animal1)
      elsif client_ans == 'animal2' && animal2 != nil
        client2.add_pets_shelter(animal2)
        shelter.remove_animals(animal2)
      elsif client_ans == 'animal3' && animal3 != nil
        client2.add_pets_shelter(animal3)
        shelter.remove_animals(animal3)
      elsif client_ans == 'animal4' && animal4 != nil
        client2.add_pets_shelter(animal4)
        shelter.remove_animals(animal4)
      end

    end




  when 8
    puts  "Choose client(client1/client2)"
    answer = gets.chomp

    case answer

    when 'client1'
      puts "Which pet would you like to give back? (animal1/animal2/animal3/animal4)"
      client_ans = gets.chomp

      if client_ans == 'animal1' && animal1 != nil
        client1.remove_pets_shelter(animal1)
        shelter.add_animals(animal1)
      elsif client_ans == 'animal2' && animal2 != nil
        client1.remove_pets_shelter(animal2)
        shelter.add_animals(animal2)
      elsif client_ans == 'animal3' && animal3 != nil
        client1.remove_pets_shelter(animal3)
        shelter.add_animals(animal3)
      elsif client_ans == 'animal4' && animal4 != nil
        client1.remove_pets_shelter(animal4)
        shelter.add_animals(animal4)
      end

    when 'client2'
      puts "Which pet would you like to give back? (animal1/animal2/animal3/animal4)"
      client_ans = gets.chomp

      if client_ans == 'animal1' && animal1 != nil
        client2.remove_pets_shelter(animal1)
        shelter.add_animals(animal1)
      elsif client_ans == 'animal2' && animal2 != nil
        client2.remove_pets_shelter(animal2)
        shelter.add_animals(animal2)
      elsif client_ans == 'animal3' && animal3 != nil
        client3.remove_pets_shelter(animal3)
        shelter.add_animals(animal3)
      elsif client_ans == 'animal4' && animal4 != nil
        client4.remove_pets_shelter(animal4)
        shelter.add_animals(animal4)
      end

    end




  when 9
    puts "Which client would you like to remove? (client1/client2)"
    ans = gets.chomp

    if ans == 'client1' && client1 != nil
      shelter.remove_clients(client1)
    elsif ans == 'client2' && client2 != nil
      shelter.remove_clients(client2)
    end


  when 10
    shelter.display_animals


  when 11
    shelter.display_clients

end


  puts "Would you like to see all menu options? (y/n)"
  answer = gets.chomp.downcase
end


binding.pry
