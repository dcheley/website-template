class BusinessesController < ApplicationController
  before_action :authenticate_business!

  def index
  end

  private

  def business_params
    params.require(:business).permit(:name, :address, :category, :phone)
  end
end
