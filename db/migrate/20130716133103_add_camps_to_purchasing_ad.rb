class AddCampsToPurchasingAd < ActiveRecord::Migration
  def change
    add_column :purchasing_ads, :waste_origin, :string
    add_column :purchasing_ads, :details, :string
    add_column :purchasing_ads, :quantity, :string
    add_column :purchasing_ads, :unit, :string
    add_column :purchasing_ads, :unit_price, :string
    add_column :purchasing_ads, :total_price, :string
    add_column :purchasing_ads, :show_price, :boolean
    add_column :purchasing_ads, :frequency_removal_waste, :string
    add_column :purchasing_ads, :contract_time, :string
    add_column :purchasing_ads, :today_waste, :string
    add_column :purchasing_ads, :transportation_sample, :string
    add_column :purchasing_ads, :waste_address, :string
    add_column :purchasing_ads, :postal_code, :string
    add_column :purchasing_ads, :address_complete, :string
    add_column :purchasing_ads, :district, :string
    add_column :purchasing_ads, :state, :string
    add_column :purchasing_ads, :city, :string
  end
end
