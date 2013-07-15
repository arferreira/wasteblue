class CreateSalesAds < ActiveRecord::Migration
  def change
    create_table :sales_ads do |t|
      t.string :title
      t.string :category_id
      t.string :user_type

      t.timestamps
    end
  end
end
