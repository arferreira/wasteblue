class SalesAdsController < ApplicationController
  has_steps
  # GET /sales_ads
  # GET /sales_ads.json
  def index
    @sales_ads = SalesAd.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sales_ads }
    end
  end

  # GET /sales_ads/1
  # GET /sales_ads/1.json
  def show
    @sales_ad = SalesAd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sales_ad }
    end
  end

  # GET /sales_ads/new
  # GET /sales_ads/new.json
  def new
    @sales_ad = SalesAd.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sales_ad }
    end
  end

  # GET /sales_ads/1/edit
  def edit
    @sales_ad = SalesAd.find(params[:id])
  end

  # POST /sales_ads
  # POST /sales_ads.json
  

  # DELETE /sales_ads/1
  # DELETE /sales_ads/1.json
  def destroy
    @sales_ad = SalesAd.find(params[:id])
    @sales_ad.destroy

    respond_to do |format|
      format.html { redirect_to sales_ads_url }
      format.json { head :no_content }
    end
  end
end
