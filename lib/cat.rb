class Cat

  attr_reader :name
  attr_accessor :owner, :mood

  @@all = [] #class variable 

  def initialize(name, owner) #instance method
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end

  def self.all #class method
    @@all 
  end

end