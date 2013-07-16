class PurchasingAdsController < ApplicationController
  has_steps
  # GET /purchasing_ads
  # GET /purchasing_ads.json
  def index
    @purchasing_ads = PurchasingAd.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @purchasing_ads }
    end
  end

  # GET /purchasing_ads/1
  # GET /purchasing_ads/1.json
  def show
    @purchasing_ad = PurchasingAd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @purchasing_ad }
    end
  end

  # GET /purchasing_ads/new
  # GET /purchasing_ads/new.json
  def new
    @purchasing_ad = PurchasingAd.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @purchasing_ad }
    end
  end

  # GET /purchasing_ads/1/edit
  def edit
    @purchasing_ad = PurchasingAd.find(params[:id])
  end

  # POST /purchasing_ads
  # POST /purchasing_ads.json
  #def create
  #  @purchasing_ad = PurchasingAd.new(params[:purchasing_ad])

  #  respond_to do |format|
  #    if @purchasing_ad.save
  #      format.html { redirect_to @purchasing_ad, notice: 'Purchasing ad was successfully created.' }
  #      format.json { render json: @purchasing_ad, status: :created, location: @purchasing_ad }
  #    else
  #      format.html { render action: "new" }
  #      format.json { render json: @purchasing_ad.errors, status: :unprocessable_entity }
  #    end
  #  end
  #end

  # PUT /purchasing_ads/1
  # PUT /purchasing_ads/1.json
  #def update
  #  @purchasing_ad = PurchasingAd.find(params[:id])

  #  respond_to do |format|
  #    if @purchasing_ad.update_attributes(params[:purchasing_ad])
  #      format.html { redirect_to @purchasing_ad, notice: 'Purchasing ad was successfully updated.' }
  #      format.json { head :no_content }
  #    else
  #      format.html { render action: "edit" }
  #      format.json { render json: @purchasing_ad.errors, status: :unprocessable_entity }
  #    end
  #  end
  #end

  # DELETE /purchasing_ads/1
  # DELETE /purchasing_ads/1.json
  def destroy
    @purchasing_ad = PurchasingAd.find(params[:id])
    @purchasing_ad.destroy

    respond_to do |format|
      format.html { redirect_to purchasing_ads_url }
      format.json { head :no_content }
    end
  end
end
