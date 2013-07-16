class Category < ActiveRecord::Base
  attr_accessible :name, :waste_name

  acts_as_taggable
  acts_as_taggable_on :waste_name

  has_many :sales_ads
  has_many :purchasing_ads
end
