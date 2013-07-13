class AddFieldsToLegalEntity < ActiveRecord::Migration
  def change
    add_column :legal_entities, :company_name, :string
    add_column :legal_entities, :fancy_name, :string
    add_column :legal_entities, :cnpj, :string
    add_column :legal_entities, :area_of_activity, :string
    add_column :legal_entities, :website, :string
    add_column :legal_entities, :waste_generated, :string
    add_column :legal_entities, :waste_id, :integer
    add_column :legal_entities, :type_of_company, :string
  end
end
