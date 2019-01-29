class ProductsController < ApplicationController
  def index
    @products = Product.all
    @product = Product.new
  end
  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = "Product successfully created"
      redirect_to product_path(@product.id)
    else
      flash[:error] = "Something went wrong"
      redirect_to root_path
    end
  end

  def show
    @product = Product.find(params[:id])
  end
  
  def destroy
    @product = Product.find(params[:id])
    @product.delete
    flash[:danger] = 'Se ha eliminado producto seleccionado!'
    redirect_to root_path 
  end
  
  private
  def product_params
    params.require(:product).permit(:name, :price, :description)
  end
end
