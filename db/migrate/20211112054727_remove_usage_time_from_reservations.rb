class RemoveUsageTimeFromReservations < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :usage_time, :integer
  end
end
