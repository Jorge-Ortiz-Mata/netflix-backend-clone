module Api
  module V1
    class AccessTokensController < ApplicationController

      def destroy
        access_token = AccessToken.all.find_by(token: request.headers.to_h['HTTP_AUTHORIZATION'])
        access_token.destroy

        render json: { errors: [] }, status: :ok
      end

      private

      def access_token_params
        params.fetch(:access_token, { access_token: token })
      end
    end
  end
end

