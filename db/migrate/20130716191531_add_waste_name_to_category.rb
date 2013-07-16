class AddWasteNameToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :waste_name, :string
  end
end
