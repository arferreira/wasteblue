class PurchasingAdsController < ApplicationController
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
    @categories = Category.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @purchasing_ad }
    end
  end

  # GET /purchasing_ads/1/edit
  def edit
    @categories = Category.all
    @purchasing_ad = PurchasingAd.find(params[:id])
  end

  # POST /purchasing_ads
  # POST /purchasing_ads.json
  def create
    @purchasing_ad = PurchasingAd.new(params[:purchasing_ad])

    if @purchasing_ad.save
      redirect_to @purchasing_ad
    else
      render :new
    end

  end

  # PUT /purchasing_ads/1
  # PUT /purchasing_ads/1.json
  def update
    @purchasing_ad = PurchasingAd.find(params[:id])

    respond_to do |format|
      if @purchasing_ad.update_attributes(params[:purchasing_ad])
        format.html { redirect_to @purchasing_ad, notice: 'Purchasing ad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @purchasing_ad.errors, status: :unprocessable_entity }
      end
    end
  end

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

  def done
    category = Category.find(params[:id])
    @tags = category.tags
    respond_to do |format|
      format.js {render :nothing => true}
      format.json {render :json => @tags}
    end
  end

  def atualizar_endereco
    @user = User.find(params[:id])
    respond_to do |format|
      format.js {render :nothing => true}
      format.json {render :json => @user}
    end
  end
end
