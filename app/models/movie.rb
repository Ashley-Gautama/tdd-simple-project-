class Movie < ActiveRecord::Base
  has_and_belongs_to_many :actors
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true, uniqueness: true
  validates :releasedate, presence: true, uniqueness: false


end
