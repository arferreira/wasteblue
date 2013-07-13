class LegalEntitiesController < ApplicationController
  before_filter :authenticate_legal_entity!
  def show
    @legal_entity = LegalEntity.find(params[:id])
  end

  def index
  end

  def edit
  end
end
