require 'pry'
class Owner
  @@all = []
  attr_reader :name, :species
  def initialize(name, species="human")
    @name = name
    @species = species
    @@all << self
  end

  def list_pets
    return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

  def pets
    self.cats + self.dogs
  end

  def sell_pets
    self.pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
  end

  def feed_cats
    self.cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def dogs
    Dog.all.select do |dog_obj|
      self == dog_obj.owner
    end
  end

  def cats
    Cat.all.select do |cat_obj|
      self == cat_obj.owner
    end
  end

  def say_species
    return "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    self.all.clear
  end

end