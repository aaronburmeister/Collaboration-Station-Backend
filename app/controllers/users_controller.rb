class UsersController < ApplicationController
    before_action :authenticate, only: [:delete, :update]

    def index
        @users = User.all

        render json: { users: @users }
    end

    def show
        @user = User.find(params[:id])

        render json: { user: @user }
    end

    def create
        @user = User.create(user_params)

        if @user.valid?
            @user.save
            render json: { user: @user }
        else
            render json: @user.errors.messages
        end
    end

    def update
        @user = User.update(params[:id], user_params)

        render json: user: @user
    end

    def delete
        @user = User.find(params[:id])

        @user.destroy

        render json: { message: "User successfully deleted!" }
    end

    private

    def user_params
        params.require(:user).permit(
            :username,
            :password,
            :email,
            :isArtist
        )
    end

end
