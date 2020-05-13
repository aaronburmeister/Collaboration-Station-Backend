class UsersController < ApplicationController
    before_action :authenticate, only: [:destroy, :update]

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
        # You can only update your own account
        # @user found from token
        if params[:id].to_i == @user.id
            @user = User.update(@user.id, user_params)
            render json: { user: @user }
        else
            render json: { error: "You can only update your own profile"}
        end
    end

    def destroy
        # You can only delete your own account
        # @user found form token
        if params[:id].to_i == @user.id
            @user.destroy
            render json: { message: "User successfully deleted!" }
        else
            render json: { error: "You can only delete your own profile"}
        end
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
