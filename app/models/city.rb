class City < ApplicationRecord
    has_many :walls
    has_many :users
end
