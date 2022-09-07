class Shelter < ActiveRecord::Base
    has_many :pets 
    has_many :adopters, through: :pets 

def current_pets 
    pets.where(adopted?: false)
end

def adopted_pets 
     pets.where(adopted?: true)
end
end