class AddSpaceIdToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :space_id, :integer
  end
end
