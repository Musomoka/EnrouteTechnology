class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 after_create  :sign_up_admin

  private
  def sign_up_admin
    if User.count == 1
      self.update(admin: true)
    else
      self.admin 
    end
  end
end
