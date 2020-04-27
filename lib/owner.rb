require 'pry'

class Owner
  # code goes here
  attr_accessor :cats, :dogs 
  attr_reader :species, :name 
  @@all = []
  

  def initialize(name)
    @species = "human" 
    @name = name
    @@all << self
    @cats = []
    @dogs = []
    # binding.pry
  end 

  def say_species
     "I am a #{@species}."
  end 

  def self.all 
    @@all
  end 

  def self.count 
    @@all.length 
  end 

  def self.reset_all
    @@all = []

  end 

  def cats
   @cats
  end 

  def dogs
    # binding.pry
    @dogs 
  end 

   def buy_cat(name)
    # binding.pry
     Cat.new(name, self)
   end  

   def buy_dog(name)
    Dog.new(name, self)
   end 

   def walk_dogs 
    @dogs.each do |dog|
      dog.mood = "happy"
    end 
   end 

   def feed_cats
    @cats.each do |cat|
      cat.mood = "happy"
    end 
  end 

  def sell_pets
    @cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
      @cats.pop 
    end 

    @dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
      @dogs.pop 
    end 

  end 


  def list_pets 
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end 
end