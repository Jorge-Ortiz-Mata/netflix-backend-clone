module Api
  module V1
    class SessionsController < ApplicationController
      before_action :return_email, only: %i[validate_email]
      before_action :set_user, only: %i[create]

      def validate_email
        user = User.find_by(email: @email)

        if user.nil?
          render json: { is_present: false, message: "User was not found in the database" }, status: :ok
        else
          render json: { is_present: true, message: "The user has been already registered" }, status: :ok
        end
      end

      def create
        if @user&.authenticate(user_password)
          @user.access_token.delete if @user.access_token.present?

          payload = { user: @user.email }
          token = JWT.encode payload, ENV['APP_JWT_KEY'], 'HS256'
          @user.create_access_token(token: token)
          render json: { access_token: token }, status: :ok
        else
          render json: { errors: ['Credentials are incorrect'] }, status: :unprocessable_entity
        end
      end

      private

      def return_email
        @email = JSON.parse(params[:email])
      end

      def set_user
        @user = User.find_by(email: JSON.parse(params[:user])['email'])
      end

      def user_password
        JSON.parse(params[:user])['password']
      end
    end
  end
end
