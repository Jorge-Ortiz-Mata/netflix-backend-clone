module Api
  module V1
    class AuthenticatedController < ApplicationController
      before_action :authenticated_user!

      private

      def authenticated_user!
        token = request.headers['HTTP_AUTHORIZATION']

        render json: { errors: ['Authentication failed. The token was not found'] }, status: :unauthorized unless AccessToken.find_by(token: token).present?
      end
    end
  end
end
