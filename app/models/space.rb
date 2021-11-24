class Space < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :contacts, dependent: :destroy
  belongs_to :host
  attachment :image
  validate :start_finish_check

  with_options presence: true do
    validates :name
    validates :address
    validates :detail
    validates :capacity
    validates :hourly_rate
  end

  def start_finish_check
    errors.add(:close_time, '利用可能終了時刻は利用可能開始時刻より遅い時間を選択してください') if open_time >= close_time
  end
end
