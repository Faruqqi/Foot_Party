class Game < ApplicationRecord
  belongs_to :user
  belongs_to :field
  has_many :registrations
end
