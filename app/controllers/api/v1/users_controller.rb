require "jwt"

module Api
  module V1
    class UsersController < ApplicationController
      def create
        @user = User.new user_params



        debugger
      end

      private

      def user_params
        JSON.parse(params.require(:user))
      end
    end
  end
end
