class SalesAd < ActiveRecord::Base
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

  def validate_price_quantity_frequency
    self.validates_presence_of :quantity
    self.validates_presence_of :unit
    self.validates_presence_of :unit_price
    self.validates_presence_of :total_price
    self.validates_presence_of :show_price
    self.validates_inclusion_of :show_price, :in => [true, false]
    self.validates_presence_of :frequency_removal_waste
    self.validates_presence_of :contract_time
  end

  def validate_sample_transport_address
    self.validates_presence_of :today_waste
    self.validates_presence_of :transportation_sample
    self.validates_presence_of :waste_address
    self.validates_presence_of :postal_code
    self.validates_presence_of :address_complete
    self.validates_presence_of :district
    self.validates_presence_of :state
    self.validates_presence_of :city
  end
end
