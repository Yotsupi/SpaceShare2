class Reservation < ApplicationRecord
  belongs_to :guest
  belongs_to :space
  validates :start_time, uniqueness: { message: 'は他のユーザーが予約しています' }
  validate :date_before_start
  validate :start_finish_check
  validate :start_check

  def usage_time
   (end_time - start_time)/3600
  end

  def billing_amount
    usage_time * hourly_rate
  end

  def date_before_start
    if start_time < Date.today
      errors.add(:start_time, "は過去の日付を選択できません")
    end
  end

  def start_finish_check
    if self.start_time >= self.end_time
      errors.add(:end_time, "利用終了時刻は開始時刻より遅い時間を選択してください")
    end
  end

  def start_check
    if self.start_time < Time.now
      errors.add(:start_time, "は現在の日時より遅い時間を選択してください")
    end
  end

  def date_check
    if self.start_time.date =! end_time.date
      errors.add(:end_time, "は利用開始日時と同じ日付を選択してください")
    end
  end

end