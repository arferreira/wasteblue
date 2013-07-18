class Category < ActiveRecord::Base
  attr_accessible :name, :waste_name

  acts_as_taggable
  acts_as_taggable_on :waste_name

end
