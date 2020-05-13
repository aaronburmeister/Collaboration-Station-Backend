class AuthenticationController < ApplicationController

    def login
        @user = User.find_by(username: params[:user][:username])

        if !@user
            render json: { message: "Username Not Found" }, status: :unauthorized
        else
            if !@user.authenticate(params[:user][:password])
                render json: { message: "Incorrect Password" }, status: :unauthorized
            else
                user = { id: @user.id, name: @user.username, exp: 48.hours.from_now.to_i}
                secret = Rails.application.secret_key_base
                token = JWT.encode(user, secret)
                render json: {token: token}
            end
        end
    end

end
