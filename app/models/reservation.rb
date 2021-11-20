class Reservation < ApplicationRecord
  belongs_to :guest
  belongs_to :space
  validates :start_time, uniqueness: { message: 'は他のユーザーが予約しています' }
  validate :date_before_start
  validate :start_finish_check
  validate :start_check

  def usage_time
    (end_time - start_time) / 3600
  end

  def billing_amount
    usage_time * hourly_rate
  end

  def date_before_start
    errors.add(:start_time, 'は過去の日付を選択できません') if start_time < Date.today
  end

  def start_finish_check
    errors.add(:end_time, '利用終了時刻は開始時刻より遅い時間を選択してください') if start_time >= end_time
  end

  def start_check
    errors.add(:start_time, 'は現在の日時より遅い時間を選択してください') if start_time < Time.now
  end
end
