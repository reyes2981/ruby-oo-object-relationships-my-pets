class Owner 

  attr_reader :name, :species
  attr_accessor 

  @@all = []
  

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
   "I am a #{@species}."
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

  def cats
    Cat.all.select{|cat| p cat.owner == self} #when a test wants you to return a collection you can use the .select method.
  end

  def dogs 
    Dog.all.select{|dog| p dog.owner == self}
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self) # Make a new instance of the appropriate pet, initializing it with that name
                        # and the owner who is purchasing it_.
  end

  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"} #walk_dogs walks the dogs which makes the dogs' moods happy
  end

  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end

  def sell_pets
    pets = self.dogs + self.cats #passing classes as values 
      pets.each do |pet|
        pet.mood = "nervous"
        pet.owner = nil
      end
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
  
end