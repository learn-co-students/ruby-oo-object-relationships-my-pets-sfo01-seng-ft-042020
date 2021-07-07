require 'pry'
class Cat
  @@all = []
  attr_accessor :owner, :mood
  attr_reader :name
  def initialize(name, owner)
    @owner = owner
    @name = name
    @mood = "nervous"
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end
  
end