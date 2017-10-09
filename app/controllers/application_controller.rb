class ApplicationController < ActionController::API
  before_action :authenticate_user_from_token!
  after_action :set_default_headers

  respond_to :json

  def authenticate_user_from_token!
    auth_token = request.headers['Authorization']
    user_type  = request.headers['UserType']

    if auth_token && user_type
      authenticate_with_auth_token(auth_token, user_type)
    else
      authenticate_error
    end
  end

  private

  def authenticate_with_auth_token(auth_token, user_type)
    unless auth_token.include?(':')
      authenticate_error
      return
    end

    if user_type == "hasband"
      hasband_id = auth_token.split(':').first
      user = Hasband.find_by(id: hasband_id)
    else
      wife_id = auth_token.split(':').first
      user = Wife.find_by(id: wife_id)
    end

    if user && Devise.secure_compare(user.access_token, auth_token)
      # User can access
      sign_in user, store: false
    else
      authenticate_error
    end
  end

  ##
  # Authentication Failure
  # Renders a 401 error
  def authenticate_error
    render json: { error: ('failure.unauthenticated') }, status: 401
  end

  DEFAULT_HEADERS = {
    'Access-Control-Allow-Origin' => '*',
  }.freeze

  def set_default_headers
    DEFAULT_HEADERS.each_pair do |key, val|
      response.headers[key] = val
    end
  end

end
