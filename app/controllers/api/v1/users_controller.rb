require "jwt"

module Api
  module V1
    class UsersController < ApplicationController
      def create
        user = User.new user_params

        if user.save
          user.access_token.delete if user.access_token.present?

          payload = { user: user.email }
          token = JWT.encode payload, ENV['APP_JWT_KEY'], 'HS256'
          user.create_access_token(token: token)
          render json: { access_token: token }, status: :ok
        else
          render json: { errors: user.errors }, status: :unprocessable_entity
        end
      end

      private

      def user_params
        JSON.parse(params.require(:user))
      end
    end
  end
end
