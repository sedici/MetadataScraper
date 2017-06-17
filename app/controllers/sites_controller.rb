class SitesController < ApplicationController
  before_action :set_sitio, only: [:show, :edit, :update, :destroy]

  # GET /sitios
  # GET /sitios.json
  def index
    @sitios = Site.all
  end

  # GET /sitios/1
  # GET /sitios/1.json
  def show
  end

  # GET /sitios/new
  def new
    @sitio = Site.new
  end

  # GET /sitios/1/edit
  def edit
  end

  # POST /sitios
  # POST /sitios.json
  def create
    @sitio = Site.new(sitio_params)
    @sitio.valores = JSON.parse(sitio_params['valores'])

    respond_to do |format|
      if @sitio.save
        format.html { redirect_to @sitio, notice: 'Site was successfully created.' }
        format.json { render :show, status: :created, location: @sitio }
      else
        format.html { render :new }
        format.json { render json: @sitio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sitios/1
  # PATCH/PUT /sitios/1.json
  def update
    respond_to do |format|
      if @sitio.update(sitio_params)
        @sitio.valores = JSON.parse(sitio_params['valores'])
        @sitio.save
        format.html { redirect_to @sitio, notice: 'Site was successfully updated.' }
        format.json { render :show, status: :ok, location: @sitio }
      else
        format.html { render :edit }
        format.json { render json: @sitio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sitios/1
  # DELETE /sitios/1.json
  def destroy
    @sitio.destroy
    respond_to do |format|
      format.html { redirect_to sitios_url, notice: 'Site was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sitio
      @sitio = Site.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sitio_params
      params.require(:sitio).permit(:nombre, :valores)
    end
end
