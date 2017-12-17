class Cat < ApplicationRecord
  validates_presence_of :name, :breed, :sex
end