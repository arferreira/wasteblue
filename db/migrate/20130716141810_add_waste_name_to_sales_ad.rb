class AddWasteNameToSalesAd < ActiveRecord::Migration
  def change
    add_column :sales_ads, :waste_name, :string
  end
end
