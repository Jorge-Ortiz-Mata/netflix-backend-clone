module Api
  module V1
    class MoviesController < AuthenticatedController
      before_action :set_movie, only: %i[ show update destroy ]

      def index
        @movies = Movie.all

        render json: @movies
      end

      def show
        render json: @movie
      end

      def create
        @movie = Movie.new(movie_params)

        if @movie.save
          render json: @movie, status: :created, location: @movie
        else
          render json: @movie.errors, status: :unprocessable_entity
        end
      end

      def update
        if @movie.update(movie_params)
          render json: @movie
        else
          render json: @movie.errors, status: :unprocessable_entity
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
        params.require(:movie).permit(:name, :description, :year, :duration)
      end
    end
  end
end

