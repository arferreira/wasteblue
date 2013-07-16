class PurchasingAd < ActiveRecord::Base
  has_steps :steps => %w{ waste_description title_details price_quantity_frequency sample_transport_address }
  attr_accessible :category_id, :title, :user_type, :waste_origin, :details, :quantity,:unit,:unit_price,:total_price,:show_price,:frequency_removal_waste,:contract_time,:today_waste,:transportation_sample,:waste_address,:postal_code,:address_complete,:district,:state,:city,:current_step,:waste_name

  def validate_waste_description
    self.validates_presence_of :category_id
    self.validates_presence_of :waste_name
  end

  def validate_title_details
    self.validates_presence_of :title
    self.validates_presence_of :waste_origin
    self.validates_presence_of :details
  end
end
