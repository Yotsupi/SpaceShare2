class Space < ApplicationRecord
  has_many :reservations
  belongs_to :host
  attachment :image
end
