class Owner
  # code goes here
  attr_reader :name, :species
  @@all = []
  @@count = 0

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @@count += 1
  end

  def say_species 
    return "I am a #{@species}."
  end

  def cats
    Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end

  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end

  def walk_dogs
    dogs.each do |dog| 
      dog.mood = "happy" 
    end
  end

  def sell_pets
    pets = dogs + cats 
    pets.each do |pet|
      pet.owner = nil
      pet.mood = "nervous"
    end
  end

  def list_pets
    dog_count = self.dogs.count 
    cat_count = self.cats.count
    return "I have #{dog_count} dog(s), and #{cat_count} cat(s)."

  end


  def feed_cats
    cats.each do |cat| 
      cat.mood = "happy" 
    end
  end

  def self.all
    @@all 
  end

  def self.count 
    @@count 
  end

  def self.reset_all 
    @@all.clear
    @@count = 0
  end
  
end