class UserPermitsController < ApplicationController
      def index
        @user_permits = User_permit.all 

        render json: @users
    end

    def show
        @user = User.find(params[:user_id])

        render json: @user
    end

    def create
        @user = User.create({
            username: params[:username],
            user_address: params[:user_address]
        })
        render json: @user
    end

    def update
        @user = User.find(params[:user_id])
        @user.update({
            username: params[:username],
            user_address: params[:user_address]
        })

        render json: @user
    end

    def destroy
        @users = User.all 
        @user = User.find(params[:user_id])
        @user.destroy

        render json: @users
    end
end
