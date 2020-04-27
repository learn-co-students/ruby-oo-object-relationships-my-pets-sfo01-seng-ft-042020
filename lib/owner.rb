require 'pry'

class Owner
  attr_reader :name, :species

  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    

  end 

  def say_species
     "I am a #{@species}."
  end 

  def self.all
    @@all
  end 

  def self.count
    @@all.count
  end 

  def self.reset_all
    @@all.clear
  end 


  def cats
    Cat.all.select do |cat|
      cat.owner == self 
    end

  end

  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end 

  def buy_cat(name)
    name = Cat.new(name, self)
  
  end

  def buy_dog(name)
    name = Dog.new(name, self)
  end 

  def self.count
    @@all.count
  end

  def walk_dogs
    Dog.all.each do |dog|
      dog.mood = "happy"
    end 
  end 

    def feed_cats
      Cat.all.each do |cat|
        cat.mood = "happy"
      end 
    end 

    def sell_pets
      sold_dogs = Dog.all.map do |dog|
        dog.mood = "nervous" and dog.owner = nil
      end
      sold_cats = Cat.all.map do |cat|
        cat.mood = "nervous" and  cat.owner = nil 
      end 
      sold_dogs && sold_cats
    end 

    def list_pets
      "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
    end 

      
    

end

#human1 = Owner.new("Todd")


#binding.pry
#0