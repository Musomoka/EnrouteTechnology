class ContactsController < ApplicationController
  
  def send_mail
    name = params[:name]
    email = params[:email]
    message = params[:message]
    ContactMailer.contact_email(name, email, message).deliver
    redirect_to contact_path, notice: 'Message sent'
  end
  
end
