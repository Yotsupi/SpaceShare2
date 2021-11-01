class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :guest_id
      t.string :people
      t.datetime :start_time
      t.datetime :end_time
      t.integer :usage_time
      t.integer :hourly_rate
      t.integer :billing_amount
      t.integer :payment
      t.boolean :is_active

      t.timestamps
    end
  end
end
