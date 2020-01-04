require 'pry'
class Owner
  attr_accessor :pets
  attr_reader :name, :species
 
  @@owners = []
  
  def initialize(name,species = "human")
    @name = name
    @species = species
    @@owners << self 
    @pets = {:cats => [], :dogs => []}
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
    pets[:cats] << Cat.new(name,self)
  end 
  
  def buy_dog(name)
    pets[:dogs] << Dog.new(name,self)
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
  
  # def sell_pets 
  #   used = self.cats + self.dogs 
  #   used.each do |pet| 
  #     pet.mood = "nervous"
  #     pet.owner = nil 
  #   end 
  
  def sell_pets
    used = []
    used << self.cats
    used << self.dogs 
    binding.pry 
    
    
    
  end 
end 

