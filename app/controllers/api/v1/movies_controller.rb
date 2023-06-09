module Api
  module V1
    class MoviesController < AuthenticatedController
      before_action :set_movie, only: %i[ show update destroy ]

      def index
        @movies = Movie.all
      end

      def show; end

      def create
        @movie = Movie.new movie_params

        if @movie.save
          render json: @movie, status: :ok
        else
          errors = []
          @movie.errors.each { |error| errors << error.full_message }

          render json: {errors: errors}, status: :unprocessable_entity
        end
      end

      def update
        if @movie.update(movie_params)
          render json: @movie, status: :ok
        else
          errors = []
          @movie.errors.each { |error| errors << error.full_message }

          render json: {errors: errors}, status: :unprocessable_entity
        end
      end

      def destroy
        @movie.destroy
      end

      private
      def set_movie
        @movie = Movie.find(params[:id])
      end

      def movie_params
        params.require(:movie).permit(:name, :description, :year, :duration, :avatar)
      end
    end
  end
end

