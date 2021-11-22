class ChangeDatatypesOfReservations < ActiveRecord::Migration[5.2]
  def change
    change_column :reservations, :start_time, :time
    change_column :reservations, :end_time, :time
  end
end
