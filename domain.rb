require 'data_mapper'

orm = DataMapper

orm.setup(:default, "postgres://localhost/databases_1_starter")

# Models a Person in the domain
class Person
  include DataMapper::Resource

  # property method
  property :id, Serial
  property :name, String

  # computed method
  def print_name
    puts name
  end
end

# throw an error when the program is being put together
# 1. Compile: 
# require in files, 
# check each line of code, 
# store the code in memory, 
# converts to instructions the machine can read
# 2. Run: executes instructions
orm.finalize
orm.auto_migrate!

# `create` creates an instance of the Person class
# AND a row in the table that corresponds to that object
timmy = Person.create(name: "timmy")

# method on the Person instance, refers to the value of the instance variable
timmy.print_name

# sets the instance variable @name on a Person instance to "tim"
timmy.name = "tim"

# updates the row that represents this Person instance with the new values of any instance variables
timmy.save

tim = Person.get(1)
tim.print_name

# Database structure

# Persons table
# id | name
# ---|-----
# 1  | "tim"