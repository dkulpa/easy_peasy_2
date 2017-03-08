class User < ApplicationRecord
  has_many :profiles
  has_one :availability
end
