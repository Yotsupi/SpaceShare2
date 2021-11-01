class RenameImageColumnToSpaces < ActiveRecord::Migration[5.2]
  def change
    rename_column :spaces, :image, :image_id
  end
end
