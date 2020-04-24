class Dog

    attr_writer :owner, :mood
    attr_reader :name, :owner, :mood

    @@all = [ ]

  def initialize(name,owner)
    @name = name
    @owner = owner
    @mood = "nervous"

    @@all << self
  end


  def self.all
    @@all
  end

 


  # code goes here
end