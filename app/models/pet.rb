class Pet < ActiveRecord::Base
belongs_to :shelter
belongs_to :adopter 

def self.oldest 
    self.all.max_by {|pet| pet.age}
end

def self.average_age
    self.all.sum(:age) / self.all.length.to_f
end 

def in_dog_years
    if (self.species == "dog")
        self.age * 5
    end 
    end
end
