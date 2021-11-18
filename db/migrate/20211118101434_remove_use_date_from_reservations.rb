class RemoveUseDateFromReservations < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :use_date, :datetime
  end
end
