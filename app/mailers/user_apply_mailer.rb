class UserApplyMailer < ApplicationMailer
  default from: 'thao@sonant.vn'
  def thank_email userapply
    @userapplied = userapply
    @url = ""
    mail(to: @userapplied.email, subject: 'Thank you to apply our job')
  end
end
