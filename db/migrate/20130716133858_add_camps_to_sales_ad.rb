class AddCampsToSalesAd < ActiveRecord::Migration
  def change
    add_column :sales_ads, :waste_origin, :string
    add_column :sales_ads, :details, :string
    add_column :sales_ads, :quantity, :string
    add_column :sales_ads, :unit, :string
    add_column :sales_ads, :unit_price, :string
    add_column :sales_ads, :total_price, :string
    add_column :sales_ads, :show_price, :boolean
    add_column :sales_ads, :frequency_removal_waste, :string
    add_column :sales_ads, :contract_time, :string
    add_column :sales_ads, :today_waste, :string
    add_column :sales_ads, :transportation_sample, :string
    add_column :sales_ads, :waste_address, :string
    add_column :sales_ads, :postal_code, :string
    add_column :sales_ads, :address_complete, :string
    add_column :sales_ads, :district, :string
    add_column :sales_ads, :state, :string
    add_column :sales_ads, :city, :string
  end
end
