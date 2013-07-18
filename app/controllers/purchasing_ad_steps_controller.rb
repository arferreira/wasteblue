class PurchasingAdStepsController < ApplicationController
  include Wicked::Wizard
  steps :waste_description, :title_details, :price_quantity_frequency, :sample_transport_address
  
  def waste_description
    @purchasing_ad = PurchasingAd.new
    @categories = Category.all
    render_wizard
  end

  def show
    @purchasing_ad = PurchasingAd.new
    @categories = Category.all
    render_wizard
  end
end
