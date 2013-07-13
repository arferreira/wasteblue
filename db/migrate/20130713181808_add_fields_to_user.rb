class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :cpf, :string
    add_column :users, :telephone_home, :string
    add_column :users, :telephone_cell, :string
    add_column :users, :address, :string
    add_column :users, :district, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :postal_code, :string
  end
end
