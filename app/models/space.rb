class Space < ApplicationRecord
  belongs_to :host
  attachment :image
end
