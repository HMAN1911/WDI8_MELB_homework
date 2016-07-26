require './main'

class Client

  def initiliaze(client_name, client_children = "", client_age = "")
    @client_name = client_name
    @client_children = client_children
    @client_age = client_age
    @client_pets = []
  end

end

=begin
Client:

A client should have a name.
A client should have a number of children.
A client should have an age.
A client should have a list of pets.

=end
