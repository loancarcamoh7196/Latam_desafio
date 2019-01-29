class SalesController < ApplicationController
  def new 

  end
  
  def create
    @sale = Sales.create(sale_params)  
  end

  def sale_params
    params.require(:sale).permit(:detail, :category, :value, :discount, :tax)    
  end
end
