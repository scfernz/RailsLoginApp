class RegistrationController < ApplicationController
  def index
  end

  def register
    if params.has_key?(:user_id) && !params[:user_id].strip.empty?
      user_name = params[:user_id].strip
      # Save user to database
      @user = User.new
      @home_phone = PhoneNum.new
      @cell_phone = PhoneNum.new
      @work_phone = PhoneNum.new
      @user.user_id = params[:user_id]
      @user.password = params[:password]
      @user.given_name = params[:given_name]
      @user.family_name = params[:family_name]
      @user.street_addy = params[:street_addy]
      @user.city = params[:city]
      @user.state = params[:state]
      @user.country = params[:country]
      @user.postal = params[:postal]
      @user.email_addy = params[:email_addy]
      @home_phone.number = params[:home_phone]
      @home_phone.description = 'home'
      @cell_phone.number = params[:cell_phone]
      @cell_phone.description = 'cell'
      @work_phone.number = params[:work_phone]
      @work_phone.description = 'work'
      @home_phone.save
      @cell_phone.save
      @work_phone.save
      @user.save
      # Store user ID in session
      session[:user_id] = @user.id.to_s
      render '/registration/register.html.erb'
    else
      render '/registration/index'
    end
  end

end
