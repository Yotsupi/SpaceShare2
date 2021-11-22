class AddUseDateToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :use_date, :date
  end
end
