class Dog
  attr_reader :name
  attr_accessor :owner, :mood
  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

end