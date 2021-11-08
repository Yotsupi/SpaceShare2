class Reservation < ApplicationRecord
  belongs_to :guest, :space
end
