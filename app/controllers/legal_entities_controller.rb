class LegalEntitiesController < ApplicationController
  before_filter :authenticate_legal_entity!
  def show
    @legal_entity = LegalEntity.find(params[:id])
  end

  def index
  end

  def edit
    @legal_entity = LegalEntity.find(params[:id])
  end

  def update
    @legal_entity = LegalEntity.find(params[:id])

    respond_to do |format|
      if @legal_entity.update_attributes(params[:legal_entity])
        format.html { redirect_to @legal_entity, notice: 'Company was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @legal_entity.errors, status: :unprocessable_entity }
      end
    end
  end
end
