class ChangeDatatypeOfReservations < ActiveRecord::Migration[5.2]
  def change
    change_column :reservations, :start_time, :datetime
    change_column :reservations, :end_time, :datetime
  end
  
  def up
    remove_column :reservations, :use_date
      end

  def down
    add_column :reservations, :use_date, :datetimte
  end
  
end
