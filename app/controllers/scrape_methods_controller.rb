class ScrapeMethodsController < ApplicationController
  before_action :set_scrape_method, only: [:show, :edit, :update, :destroy]
  before_action :set_fields, only: [:new, :edit]

  # GET /scrape_methods
  # GET /scrape_methods.json
  def index
    @scrape_methods = ScrapeMethod.all
  end

  # GET /scrape_methods/1
  # GET /scrape_methods/1.json
  def show
  end

  # GET /scrape_methods/new
  def new
    @scrape_method = ScrapeMethod.new
  end

  # GET /scrape_methods/new_using_meta_tag
  # def new_using_meta_tag

  # end

  # GET /scrape_methods/1/edit
  def edit
  end

  # POST /scrape_methods
  # POST /scrape_methods.json
  def create
    @scrape_method = ScrapeMethod.new(scrape_method_params)

    respond_to do |format|
      if @scrape_method.save
        format.html { redirect_to @scrape_method, notice: 'Scrape method was successfully created.' }
        format.json { render :show, status: :created, location: @scrape_method }
      else
        format.html { render :new }
        format.json { render json: @scrape_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scrape_methods/1
  # PATCH/PUT /scrape_methods/1.json
  def update
    respond_to do |format|
      if @scrape_method.update(scrape_method_params)
        format.html { redirect_to @scrape_method, notice: 'Scrape method was successfully updated.' }
        format.json { render :show, status: :ok, location: @scrape_method }
      else
        format.html { render :edit }
        format.json { render json: @scrape_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scrape_methods/1
  # DELETE /scrape_methods/1.json
  def destroy
    @scrape_method.destroy
    respond_to do |format|
      format.html { redirect_to scrape_methods_url, notice: 'Scrape method was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scrape_method
      @scrape_method = ScrapeMethod.find(params[:id])
    end

    def set_fields
      @fields = Field.all.pluck(:name, :id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scrape_method_params
      params.require(:scrape_method).permit(:method, :field_id)
    end
end
