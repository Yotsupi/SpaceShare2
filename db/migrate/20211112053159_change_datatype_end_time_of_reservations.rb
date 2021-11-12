class ChangeDatatypeEndTimeOfReservations < ActiveRecord::Migration[5.2]
  def change
    change_column :reservations, :end_time, :time
  end
end
