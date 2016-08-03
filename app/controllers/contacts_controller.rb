class ContactsController < ApplicationController

  def index
    if current_user
      @contacts = current_user.contacts
    else
      flash[:danger] = "NOT ALLOWED!!!!!"
      redirect_to "/login"
    end
  end

  def show
    @contact = Contact.find_by(id: params[:id])
  end

  def new
    
  end

  def create
    contact = Contact.new(first_name: params[:first_name], middle_name: params[:middle_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number], user_id: current_user.id)
    contact.save
    flash[:success] = "Contact Created!"
    redirect_to "/contacts/#{contact.id}"
  end

end
