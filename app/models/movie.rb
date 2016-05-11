class Movie < ActiveRecord::Base
  has_and_belongs_to_many :actors
  validates :name, presence: true, uniqueness: true
  validates :bio, presence: true, uniqueness: true
  validates :age, presence: true, uniqueness: true


end
