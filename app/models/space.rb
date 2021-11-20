class Space < ApplicationRecord
  has_many :reservations, dependent: :destroy
  belongs_to :host
  attachment :image

  with_options presence: true do
    validates :name
    validates :address
    validates :detail
    validates :image_id
    validates :capacity
    validates :hourly_rate
  end

end
