class AddOtherFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :area_of_activity, :string
    add_column :users, :waste_generated, :string
    add_column :users, :type_of_user, :string
  end
end
