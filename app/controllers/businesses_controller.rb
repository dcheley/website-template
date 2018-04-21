class BusinessesController < ApplicationController
  before_action :authenticate_business!

  def index
    @businesses = Business.all
    if params[:search]
      @businesses = Business.search(params[:search]).order("email ASC").distinct
    end
  end

  private

  def business_params
    params.require(:business).permit(:name, :address, :category, :phone)
  end
end
