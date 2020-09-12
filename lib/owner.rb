class Owner
  attr_reader :name, :species
  attr_reader :cats
  attr_reader :dogs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @cats = []
    @dogs = []
    @@all << self
  end
  
  def buy_cat(cat)
    @cats << Cat.new(cat, self)
  end
    
  def buy_dog(dog)
    Dog.new(dog, self)
  end
  
  def walk_dogs
    Cat.all.select do |cat|
      if cat.owner == self
        cat.mood = "happy"
      end
    end
  end
  
  def feed_cats
    Cat.all.select do |cat|
      if cat.owner == self
        cat.mood = "happy"
      end
    end
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    all.count
  end
  
  def self.reset_all
    all.clear()
  end

end