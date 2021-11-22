class RenameColumnToReservations < ActiveRecord::Migration[5.2]
  def change
    rename_column :reservations, :using_time, :begin_time
    rename_column :reservations, :end_time, :finish_time
  end
end
