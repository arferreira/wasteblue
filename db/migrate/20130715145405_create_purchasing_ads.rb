class CreatePurchasingAds < ActiveRecord::Migration
  def change
    create_table :purchasing_ads do |t|
      t.string :title
      t.string :category_id
      t.string :user_type

      t.timestamps
    end
  end
end
