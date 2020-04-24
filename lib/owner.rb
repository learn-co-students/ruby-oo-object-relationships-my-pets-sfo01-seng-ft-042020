require 'pry'

class Owner

    attr_reader :name, :species

  @@all = [ ]

    def initialize(name)
      @name = name
      @species = "human"
      @@all << self
    
    end

    def say_species
      p "I am a #{species}."
    end

    def self.all
      @@all
    end

    def self.count
      self.all.count
    end

    def self.reset_all
      self.all.clear
    end

    def cats
      Cat.all.select {|cats| cats.owner == self}
    end

    def dogs
      Dog.all.select {|dogs| dogs.owner == self}
    end

    def buy_cat(name)
      Cat.new(name,self)
    end

    def buy_dog(name)
      Dog.new(name,self)
    end

    def walk_dogs
      self.dogs.each {|change| change.mood = "happy"}
    end

    def feed_cats
      self.cats.each {|change| change.mood = "happy"}
    end

    def sell_pets
      self.cats.each do |change|
        change.mood = "nervous"
        change.owner = nil
    end

      self.dogs.each do |change|
        change.mood ="nervous"
        change.owner = nil
      end

      self.dogs.clear
      self.cats.clear
  end

    def list_pets
       "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
    end

  # code goes here
end