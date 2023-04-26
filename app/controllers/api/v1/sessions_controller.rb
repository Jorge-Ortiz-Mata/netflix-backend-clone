require "jwt"

module Api
  module V1
    class SessionsController < ApplicationController
      def validate_email
        render json: { response: "It worked!" }, status: :ok
      end
    end
  end
end
