class BusinessesController < ApplicationController
  before_action :authenticate_business!

  def index
  end
end
