class PurchasingAd < ActiveRecord::Base
  has_steps :steps => %w{ waste_description title_details price_quantity_frequency sample_transport_address }
  attr_accessible :category_id, :title, :user_type
end
