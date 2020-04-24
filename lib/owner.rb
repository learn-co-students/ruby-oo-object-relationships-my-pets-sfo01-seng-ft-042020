class Owner
  # code goes here
  attr_reader :name 

    @@all = []

  def initialize(name)
    @name = name
    @@all << self


  end

  def species
    @species = "human"
  end

  def say_species
    "I am a #{species}."


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
    Cat.all.select {|cat| cat.owner == self}



  end

  def dogs 
    Dog.all.select {|dog| dog.owner == self}


  end

  def buy_cat(name)
    Cat.new(name, self)


  end

  def buy_dog(name)
    Dog.new(name, self)



  end

  def walk_dogs

    Dog.all.each {|dog| dog.mood = "happy"}


  end

  def feed_cats
    Cat.all.each {|dog| dog.mood = "happy"}



  end

  def sell_pets
    Cat.all.each {|dog| dog.mood = "nervous"}
    Dog.all.each {|dog| dog.mood = "nervous"}

    Cat.all.each {|cat| cat.owner = nil }
    Dog.all.each {|dog| dog.owner = nil }

  end


  def list_pets

    my_dogs = Dog.all.select {|dog| dog.owner == self}
    my_cats = Cat.all.select {|cat| cat.owner == self}
    "I have #{my_dogs.count} dog(s), and #{my_cats.count} cat(s)."
    



  end



end