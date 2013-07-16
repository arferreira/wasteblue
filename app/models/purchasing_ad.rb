class PurchasingAd < ActiveRecord::Base
  has_steps :steps => %w{ waste_description title_details price_quantity_frequency sample_transport_address }
  attr_accessible :category_id, :title, :user_type, :waste_origin, :details, :quantity,:unit,:unit_price,:total_price,:show_price,:frequency_removal_waste,:contract_time,:today_waste,:transportation_sample,:waste_address,:postal_code,:address_complete,:district,:state,:city,:current_step,:waste_name
end
