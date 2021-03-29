class UrlsShortersController < ApplicationController
  before_action :set_urls_shorter, only: %i[ show edit update destroy ]

  # GET /urls_shorters or /urls_shorters.json
  def index
    @urls_shorters = UrlsShorter.all
   
  end

  # GET /urls_shorters/1 or /urls_shorters/1.json
  def show
   
    @url_shorter = current_user.urls_shorters.find_by(url_short: params[:url_short])
    
      redirect_to @urls_shorter.clean

  end

  # GET /urls_shorters/new
  def new
    @urls_shorter = UrlsShorter.new
  end

  # GET /urls_shorters/1/edit
  def edit
  end

  # POST /urls_shorters or /urls_shorters.json
  def create
 
    @urls_shorter = current_user.urls_shorters.new(urls_shorter_params)
    @urls_shorter.url_short = @urls_shorter.to_short_url
    @urls_shorter.url_long = @urls_shorter.clean

    respond_to do |format|
      if @urls_shorter.save
        format.html { redirect_to urls_shorters_path, notice: "Urls shorter was successfully created." }
       
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @urls_shorter.errors, status: :unprocessable_entity }
      end
 
  end
  end

  # PATCH/PUT /urls_shorters/1 or /urls_shorters/1.json
  def update
    respond_to do |format|
      if @urls_shorter.update(urls_shorter_params)
        format.html { redirect_to @urls_shorter, notice: "Urls shorter was successfully updated." }
        format.json { render :show, status: :ok, location: @urls_shorter }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @urls_shorter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /urls_shorters/1 or /urls_shorters/1.json
  def destroy
    @urls_shorter.destroy
    respond_to do |format|
      format.html { redirect_to urls_shorters_url, notice: "Urls shorter was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_urls_shorter
      @urls_shorter = UrlsShorter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def urls_shorter_params
      params.require(:urls_shorter).permit(:url_long)
    end
end
