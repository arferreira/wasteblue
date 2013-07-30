class PurchasingAd < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  mount_uploader :picture_details, PictureDetailsUploader
  mount_uploader :picture_extra, PictureExtraUploader
  mount_uploader :picture_greatness, PictureGreatnessUploader
  belongs_to :category  
  attr_accessible :picture,:picture_details,:picture_extra,:picture_greatness,:same_address, :category_id, :title, :user_type, :waste_origin, :details, :quantity,:unit,:unit_price,:total_price,:show_price,:frequency_removal_waste,:contract_time,:today_waste,:transportation_sample,:waste_address,:postal_code,:address_complete,:district,:state,:city,:current_step,:waste_name
end
