class ChangeStatusOfSpaces < ActiveRecord::Migration[5.2]
  def up
    change_column :spaces, :is_active, :boolean, default: 'true'
  end

  def down
    change_column :spaces, :is_active, :boolean
  end
end
