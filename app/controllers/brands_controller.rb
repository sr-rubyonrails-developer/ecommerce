class BrandsController < ApplicationController
  before_action :set_brand, only: [:show, :edit, :update, :destroy]

  # GET /brands
  # GET /brands.json
  def index
    @brands = Brand.order(:nombre)
  end

  # GET /brands/1
  # GET /brands/1.json
  def show
  end

  # GET /brands/new
  def new
    @brand = Brand.new
  end

  # GET /brands/1/edit
  def edit
  end

  # POST /brands
  # POST /brands.json
  def create
    @brand = Brand.new(brand_params)

    respond_to do |format|
      if @brand.update(brand_params)
        format.html { redirect_to brands_url, notice: "La marca '#{@brand.nombre}' se creó con exito." }
        format.json { head :no_content }
      else
        format.html { redirect_to brands_url, notice: "No fue posible actualizar la marca '#{@brand.nombre}', intentalo una vez más." }
        format.json { head :no_content }
      end
      # if @brand.save
      #   format.html { redirect_to @brand, notice: "La marca '#{@brand.nombre}' se creó con exito." }
      #   format.json { render :show, status: :created, location: @brand }
      # else
      #   format.html { render :new }
      #   format.json { render json: @brand.errors, status: :unprocessable_entity }
      # end
    end
  end

  # PATCH/PUT /brands/1
  # PATCH/PUT /brands/1.json
  def update
    respond_to do |format|
      if @brand.update(brand_params)
        format.html { redirect_to brands_url, notice: "La marca '#{@brand.nombre}' se actualizó correctamente." }
        format.json { head :no_content }
      else
        format.html { redirect_to brands_url, notice: "No fue posible actualizar la marca '#{@brand.nombre}', intentalo una vez más." }
        format.json { head :no_content }
      end
    end
    # respond_to do |format|
      # if @brand.update(brand_params)
      #   format.html { redirect_to @brand, notice: "La marca '#{@brand.nombre}' se actualizó correctamente."}
      #   format.json { render :show, status: :ok, location: @brand }
      # else
      #   format.html { render :edit }
      #   format.json { render json: @brand.errors, status: :unprocessable_entity }
      # end
    # end
  end

  # DELETE /brands/1
  # DELETE /brands/1.json
  def destroy
    @brand.destroy
    respond_to do |format|
      format.html { redirect_to brands_url, notice: "La marca '#{@brand.nombre}' fue eliminada satisfactoriamente." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brand
      @brand = Brand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brand_params
      params.require(:brand).permit(:nombre)
    end
end
