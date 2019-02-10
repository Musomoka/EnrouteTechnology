class StaticPagesController < ApplicationController
 
  def index
    @contact = Contact.new
  end


  def contacts_params
    params.fetch(:contact, {})
  end

end
