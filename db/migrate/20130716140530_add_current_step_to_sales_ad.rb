class AddCurrentStepToSalesAd < ActiveRecord::Migration
  def change
    add_column :sales_ads, :current_step, :string
    add_index  :sales_ads, :current_step
  end
end
