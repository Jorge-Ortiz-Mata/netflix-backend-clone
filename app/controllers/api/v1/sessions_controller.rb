module Api
  module V1
    class SessionsController < ApplicationController
      before_action :return_email, only: %i[validate_email]

      def validate_email
        user = User.find_by(email: @email)

        if user.nil?
          render json: { is_present: false, message: "User was not found in the database" }, status: :ok
        else
          render json: { is_present: true, message: "The user has been already registered" }, status: :ok
        end
      end

      private

      def return_email
        @email = JSON.parse(params[:email])
      end
    end
  end
end
