class User < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  has_many :games, through: :reviews
end
