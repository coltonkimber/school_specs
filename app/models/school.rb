class School < ApplicationRecord
  has_many :students, dependent: :destroy
  validates_presence_of :name
  validates_uniqueness_of :name
  validates :capacity, numericality: true
  
  
  # Validations




  
# before(:each) do
# @attr = {
#   name:
#   address: '1234w 5678s'
#   principal:'Mr. Principal'
#   capacity: 300
#   private_school:
# }
# @school = School.create(@attr)
  
  # Associations
end
