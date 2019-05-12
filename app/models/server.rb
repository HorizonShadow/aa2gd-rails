class Server < ApplicationRecord
  has_many :user_servers
  has_many :users, through: :user_servers
end
