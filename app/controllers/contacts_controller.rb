class ContactsController < ApplicationController
  
  def new
    @contact = Contact.new
  end
  
  def create
    byebug
    @contact = Contact.new(contact_params)

    if @contact.save 

      name = params[:name]
      email = params[:email]
      message = params[:message]
      ContactMailer.contact_email(name, email, message).deliver
      redirect_to root, notice: 'Message sent'
    else 
      redirect_to root, notice: 'Message didn not get sent'
    end
  end
  

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
    
  end
  
end
