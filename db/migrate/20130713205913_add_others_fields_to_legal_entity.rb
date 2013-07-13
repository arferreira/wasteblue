class AddOthersFieldsToLegalEntity < ActiveRecord::Migration
  def change
    add_column :legal_entities, :contact_name, :string
    add_column :legal_entities, :telephone_home, :string
    add_column :legal_entities, :telephone_cell, :string
    add_column :legal_entities, :address, :string
    add_column :legal_entities, :district, :string
    add_column :legal_entities, :city, :string
    add_column :legal_entities, :state, :string
    add_column :legal_entities, :postal_code, :string
  end
end
