class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.new_request.subject
  #
  def new_request
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
