class ContactMailer < ApplicationMailer
  def send_mail(contact)
    @contact = contact
    mail to:   @contact.space.host.email, subject: '【お問い合わせ】'
  end
end
