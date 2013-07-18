class PurchasingAdStepsController < ApplicationController
  include Wicked::Wizard
  steps :waste_description, :title_details, :price_quantity_frequency, :sample_transport_address
  
  def show
    render_wizard
  end
end
