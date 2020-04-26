class Owner
  # code goes here

  attr_reader :name, :species

  
  @@all = []
  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
    @cat = 0
    @dog = 0
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def dogs
    Dog.all.select { |s| s.owner == self }
  end

  def cats
    Cat.all.select { |s| s.owner == self }
  end

  def buy_cat(name)
    Cat.new(name, self)
    @cat += 1
  end

  def buy_dog(name)
    Dog.new(name, self)
    @dog += 1
  end

  def walk_dogs
    Dog.all.map { |s| s.mood = "happy"}
  end

  def feed_cats
    Cat.all.map { |s| s.mood = "happy"}
  end

  def sell_pets
    Dog.all.map { |s| s.mood = "nervous"}
    Cat.all.map { |s| s.mood = "nervous"}

    Dog.all.map { |s| s.owner = nil}
    Cat.all.map { |s| s.owner = nil}
  end

  def list_pets
    # dog_count = Dog.all.name.count
    # cat_count = Cat.all.name.count
    "I have #{@dog} dog(s), and #{@cat} cat(s)."
  end



end