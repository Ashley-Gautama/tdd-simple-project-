class Actor < ActiveRecord::Base
  has_and_belongs_to_many :movies
  validates :name, presence: true, uniqueness: true
  validates :bio, presence: true, uniqueness: true
  validates :age, presence: true

end
