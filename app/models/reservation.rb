class Reservation < ApplicationRecord
  belongs_to :guest
  belongs_to :space
end
