class Dog < ApplicationRecord
  validates_presence_of :name, :breed, :sex
  
  scope :search_breed, -> (breed){ where "breed = ?", breed}
end