class AddSpaceIdToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :space_id, :integer
  end
end
