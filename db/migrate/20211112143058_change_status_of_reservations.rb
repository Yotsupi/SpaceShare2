class ChangeStatusOfReservations < ActiveRecord::Migration[5.2]
  def change
    change_column_default :reservations, :is_active, from: false, to: true
  end
end
