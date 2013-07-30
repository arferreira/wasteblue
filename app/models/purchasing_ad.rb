class PurchasingAd < ActiveRecord::Base
  belongs_to :category  
  attr_accessible :same_address, :category_id, :title, :user_type, :waste_origin, :details, :quantity,:unit,:unit_price,:total_price,:show_price,:frequency_removal_waste,:contract_time,:today_waste,:transportation_sample,:waste_address,:postal_code,:address_complete,:district,:state,:city,:current_step,:waste_name
end
