class Game < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews
end
