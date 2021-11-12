class Reservation < ApplicationRecord
  belongs_to :guest
  belongs_to :space

  def usage_time
   (end_time - start_time)/3600
  end
  def billing_amount
    usage_time * hourly_rate
  end
end
