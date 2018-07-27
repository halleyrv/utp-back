class SessionsController < ApplicationController
  skip_before_action :set_current_user, :authenticate_request
  def login
    user = User.find_by_username(params[:username])
    puts "El password es: " + params[:password]
    if user && user.authenticate(params[:password])
      puts "llenog"
      token = JsonWebToken.encode(user_id: user.id)
      puts "EL token es:" + token
      # ember-simple-auth needs token in 'access_token' key for oauth2
      render json: { access_token: token }
    else
      render json: { errors: "Invalid username or password" }, status: :unauthorized
    end
  end
end
