class AddWasteNameToPurchasingAd < ActiveRecord::Migration
  def change
    add_column :purchasing_ads, :waste_name, :string
  end
end
