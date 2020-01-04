class Dog
  attr_accessor :owner, :mood 
  attr_reader :name 
  
  @@dogs = []
  
  def initialize(name,owner)
    @owner = owner 
    @name = name 
    @mood = "nervous"
    @@dogs << self 
  end 
  
  def self.all 
    @@dogs
  end 
end 