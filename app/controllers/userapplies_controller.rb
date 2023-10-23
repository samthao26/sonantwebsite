class UserappliesController < ApplicationController
  def new
    @userapplied = Userapply.new
  end

  def create
    permitted = params.require(:userapply).permit(:name, :email, :cv)
    userapply = Userapply.new(permitted)
    if userapply.save
      UserApplyMailer.thank_email(userapply).deliver_later
      flash.now[:info] = "Thank you for your submittion."
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end

end

