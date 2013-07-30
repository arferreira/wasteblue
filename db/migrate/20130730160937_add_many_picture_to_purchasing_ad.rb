class AddManyPictureToPurchasingAd < ActiveRecord::Migration
  def change
    add_column :purchasing_ads, :picture_extra, :string
    add_column :purchasing_ads, :picture_greatness, :string
    add_column :purchasing_ads, :picture_details, :string
  end
end
