class StaticPagesController < ApplicationController
 
  def index
    @contact = Contact.new
    if User.count == 0 
      redirect_to new_user_registration_path
    end
  end

end
