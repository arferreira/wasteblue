class AddCurrentStepToPurchasingAd < ActiveRecord::Migration
  def change
    add_column :purchasing_ads, :current_step, :string
    add_index  :purchasing_ads, :current_step
  end
end
