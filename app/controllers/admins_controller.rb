class AdminsController < ApplicationController
  before_action :set_about, :portfolio_params, only: [:show, :edit, :update,:about_list, :portfolio]
  before_action :authenticate_user!
  def index
    @abouts = About.all
    @portfolios = Portfolio.all
  end


  def about_params
    params.require(:about).permit(:description, :social, :image, :profile_Picture)
  end
  def portolio_params
    params.require(:portfolio).permit(:titel, :description, :image, :portfolio_image)
  end

end
