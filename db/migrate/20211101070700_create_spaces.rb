class CreateSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :spaces do |t|
      t.integer :host_id
      t.string :name
      t.string :address
      t.text :detail
      t.string :image
      t.integer :capacity
      t.time :open_time
      t.time :close_time
      t.integer :hourly_rate
      t.boolean :is_active

      t.timestamps
    end
  end
end
