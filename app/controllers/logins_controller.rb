class LoginsController < ApplicationController
  skip_before_action :you_shall_not_pass, only: [:login]
  before_action :set_email, :set_password
  
  def login
    user = User.find_by(email: @email)
    
    if user && user.authenticate(@password)
      auth_token = encode_token(@email, @password)
      render json: {auth_token: auth_token}
    else
      head :unauthorized
    end
  end
  
  private
  
  def set_email
    @email = params[:login][:email]
  end
  
  def set_password
    @password = params[:login][:password]
  end
end
