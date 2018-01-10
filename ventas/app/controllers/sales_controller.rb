class SalesController < ApplicationController
  def new
  end

  def create
    sale = Sale.new(sale_params)
    sale.save
    redirect_to sales_new_path
  end

  private
  def sale_params
    params.require(:sale).permit(:detail, :value, :category, :discount, :tax)
  end
end
