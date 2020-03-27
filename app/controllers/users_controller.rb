class UsersController < ApplicationController
    before_action :authenticate, only: [:delete, :update]

    def index
        if params[:filter]
            @users = User.all.where(params[:filter].permit(:isArtist))
        else
            @users = User.all
        end

        render json: { users: @users }, include: [:images, :requests]
    end

    def show
        @user = User.find(params[:id])

        render json: { user: @user }, include: [:images, :requests]
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

        render json: { user: @user }
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
