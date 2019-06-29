module Api
  module V1
    class UsersController < ApplicationController
      before_action :authorize_access_request!
      before_action :set_user, only: [:show, :update, :destroy]
      before_action :current_user

      # GET /users
      def index
        if @current_user.role == 1
          @users = User.all
          render json: @users
        end
      end

      # GET /users/1
      def show
        render json: @user
      end

      # POST /users
      def create
        if @current_user.role == 1
          @user = User.new(user_params)

          if @user.save
            render json: @user, status: :created, location: @user
          else
            render json: @user.errors, status: :unprocessable_entity
          end
        end
      end

      # PATCH/PUT /users/1
      def update
        if @current_user.role == 1
          if @user.update(user_params)
            render json: @user
          else
            render json: @user.errors, status: :unprocessable_entity
          end
        end
      end

      # DELETE /users/1
      def destroy
        if @current_user.role == 1
          @user.destroy
        end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_user
          @user = User.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def user_params
          params.require(:user).permit(:email, :password, :password_confirmation, :role)
        end

        def current_user
          @current_user ||= User.find(payload["user_id"])
        end
    end
  end
end
