class Guest::ContactsController < ApplicationController
  def new
    @contact = Contact.new
    @space = Space.find(params[:space_id])
  end

  def create
    contact = Contact.new(contact_params)
    if contact.save
      ContactMailer.send_mail(contact).deliver_now
      redirect_to guest_space_path(contact.space_id)
    else
      render :new
    end
  end

  def contact_params
    params.require(:contact).permit(:email, :name, :phone_number, :subject, :message, :space_id)
  end
end
