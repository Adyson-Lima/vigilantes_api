class Vigilante < ApplicationRecord
  validates :name, :vehicle, presence: true
end
