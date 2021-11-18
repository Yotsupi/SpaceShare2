class ChangeDatatypeUseDateOfReservations < ActiveRecord::Migration[5.2]
  def change
    change_column :reservations, :use_date, :datetime
  end
end
