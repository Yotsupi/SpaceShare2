class RenameStartTimeColumnToReservations < ActiveRecord::Migration[5.2]
  def change
    rename_column :reservations, :start_time, :using_time
  end
end
