class Owner
  require 'pry'
  attr_reader :name, :species
  @@all = []
  def initialize(name)
    @name = name
    @cats = []
    @dogs = []
    @@all << self
  end 
  def species(species = "human")
    @species = species
  end 
  def say_species
    return "I am a human."
  end 
  def self.all
    @@all
  end 
  def self.count 
    return @@all.length
  end 
  def self.reset_all
    @@all = []
    return @@all
  end 
  def att_cats(cats)
    @cats << cats
    cats.owner = self
  end 
  def cats
    @cats 
  end 
  def att_dogs(dogs)
    @dogs << dogs 
    dogs.owner = self
  end 
  def dogs
    @dogs 
  end 

  def buy_cat(name)
    Cat.new(name, self)
  end 

  def buy_dog(name)
    Dog.new(name,self)
  end 
  def walk_dogs
    @dogs.each {|dog| dog.mood = "happy"}
  end 

  def feed_cats 
    @cats.each {|cat| cat.mood = "happy"}
  end
  def sell_pets
    @dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil 
      @dogs.delete(dog)
    end 
    @cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
      @cats.delete(cat)
    end 
  end 
  def list_pets
    return "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
  end 
end
