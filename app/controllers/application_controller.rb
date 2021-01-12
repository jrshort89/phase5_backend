class ApplicationController < ActionController::API
    before_action :authenticate_user
    include ::ActionController::Cookies

    def encode_jwt(payload)
        JWT.encode(payload, Rails.application.secrets.secret_key_base)
    end

    def auth_header
        request.headers['Authorization']
    end

    def decode_jwt(token)
        if auth_header
            begin
                JWT.decode(token, Rails.application.secrets.secret_key_base, true, algorithm: 'HS256')
            rescue JWT::DecodeError 
                render json: {message: "Login Error!"}, status: :unauthorized

                nil
            end
        end
    end

    def current_user
        if decode_jwt(cookies.signed[:jwt])
            user_id = decode_jwt(cookies.signed[:jwt])
            return @user=User.find_by(id: user_id)
        end    
    end 

    def logged_in?
    !!current_user
    end

    def authenticate_user
        jwt = cookies.signed[:jwt]
        decode_jwt(jwt)
    end

    private
  
    def require_login
      unless logged_in?
        render json: {error: "I'm pretty sure you're logged in.  This should be working.  Why isn't this working?  Log in harder."}
      end 
    end
end
