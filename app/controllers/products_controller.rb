class ProductsController < ApplicationController
  before_action :set_group
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products or /products.json
  def index
    @products = @group.products
  end



  # GET /products/1 or /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end


  # GET /products/1/edit
  def edit
  end

  # POST /products or /products.json
  def create
    @product = @group.products.new(product_params)  # Verknüpfe das Produkt mit der Gruppe

    if @product.save
      redirect_to group_product_path(@group, @product), notice: 'Produkt erfolgreich erstellt.'
    else
      render :new
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to group_product_path(@group, @product), notice: "Product was successfully updated." }

        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy!

    respond_to do |format|
      format.html { redirect_to group_products_path(@group), status: :see_other, notice: "Product was successfully destroyed." }

      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = @group.products.find_by(id: params[:id])  # Sucht das Produkt innerhalb der Gruppe
    if @product.nil?
      redirect_to group_products_path(@group), alert: "Produkt nicht gefunden oder gehört nicht zu dieser Gruppe."
    end
  end


  def set_group
    @group = Group.find(params[:group_id])
  end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:user_name, :product_name, :quantity, :affiliation)
    end


end
