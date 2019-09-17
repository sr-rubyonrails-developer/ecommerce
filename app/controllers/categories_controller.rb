class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.all
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

  # GET /categories/1/edit
  def edit
  end

  # POST /categories
  # POST /categories.json
  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to categories_url, notice: "La categoría '#{@category.nombre}' se creó con exito." }
        format.json { head :no_content }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json
  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to categories_url, notice: "La categoría '#{@category.nombre}' se actualizó correctamente." }
        format.json { head :no_content }
      else
        format.html { redirect_to categories_url, notice: "No fue posible actualizar la categoría '#{@category.nombre}', intentalo una vez más.." }
        format.json { head :no_content }
      end
      # if @category.update(category_params)
      #   format.html { redirect_to @category, notice: "La categoría '#{@category.nombre}' se actualizó correctamente." }
      #   format.json { render :show, status: :ok, location: @category }
      # else
      #   format.html { render :edit }
      #   format.json { render json: @category.errors, status: :unprocessable_entity }
      # end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: "La categoría '#{@category.nombre}' fue eliminada satisfactoriamente." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:nombre)
    end
end
