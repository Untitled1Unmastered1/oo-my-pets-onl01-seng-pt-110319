require 'pry'
class Owner
  attr_accessor :pets
  attr_reader :name, :species
 
  @@owners = []
  
  def initialize(name,species = "human")
    @name = name
    @species = species
    @@owners << self 
    @allpets = {:cats => [], :dogs => []}
  end 
  
  def say_species 
    return "I am a #{species}."
  end 
  
  def self.all 
    @@owners 
  end 
  
  def self.count 
    @@owners.size 
  end 
  
  def self.reset_all 
    @@owners.clear
  end 
  
  def cats 
    Cat.all.select { |cat| cat.owner == self}
  end 
  
  def dogs 
    Dog.all.select { |dog| dog.owner == self}
  end 
  
  def buy_cat(name)
    allpets[:cats] << Cat.new(name,self)
  end 
  
  def buy_dog(name)
    allpets[:dogs] << Dog.new(name,self)
  end 
  
  def walk_dogs
    dogs.each do |dog|
      dog.mood = "happy"
    end 
  end 
  
  def feed_cats
    cats.each do |cat|
      cat.mood = "happy"
    end 
  end 
  
  def sell_pets
    @@allpets 
    binding.pry 
  end 
end 

