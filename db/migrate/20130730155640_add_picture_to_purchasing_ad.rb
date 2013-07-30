class AddPictureToPurchasingAd < ActiveRecord::Migration
  def change
    add_column :purchasing_ads, :picture, :string
  end
end
