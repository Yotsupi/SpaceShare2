class Reservation < ApplicationRecord
  belongs_to :guest
  belongs_to :space
  validates :use_date, uniqueness: {scope: [:space_id], message: 'は他のユーザーが予約しています' }
  validate :date_before_start
  validate :start_finish_check

  def start_time
    use_date.midnight.since(begin_time.seconds_since_midnight)
  end

  def end_time
    use_date.midnight.since(finish_time.seconds_since_midnight)
  end

  def usage_time
    (finish_time - begin_time) / 3600
  end

  def billing_amount
    usage_time * hourly_rate
  end

  def date_before_start
    errors.add(:use_date, 'は過去の日付を選択できません') if use_date < Date.today
  end

  def start_finish_check
    errors.add(:finish_time, '利用終了時刻は開始時刻より遅い時間を選択してください') if begin_time >= finish_time
  end

end
