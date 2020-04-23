class ApplicationController < ActionController::API
  before_action :you_shall_not_pass, :set_default_response_format

  def encode_token(email, password)
    payload = { email: email, password: password }
    JWT.encode payload, nil, 'none'
  end

  protected

  def you_shall_not_pass
    token = header_authorization_token

    if token
      decoded_token = decode_token token
      email = decoded_token['email']
      password = decoded_token['password']
      return if is_authorized_user email, password
    end

    head :unauthorized
  end

  private

  def header_authorization_token
    request.headers['Authorization']
  end

  def is_authorized_user(email, password)
    user = User.find_by(email: email)
    user && !!user.authenticate(password)
  end

  def decode_token(token)
    decoded_token_array = JWT.decode token, nil, false
    decoded_token_array[0]
  end

  def set_default_response_format
    request.format = :json
  end
end
