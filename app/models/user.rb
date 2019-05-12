class User < ApplicationRecord
  has_many :user_servers
  has_many :servers, through: :user_servers

  has_many :connections

  has_many :game_users
  has_many :games, through: :game_users
end
