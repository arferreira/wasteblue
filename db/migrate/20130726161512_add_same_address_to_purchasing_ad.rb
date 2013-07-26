class AddSameAddressToPurchasingAd < ActiveRecord::Migration
  def change
    add_column :purchasing_ads, :same_address, :boolean
  end
end
