class GamesController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        render json: Game.all, status: :ok
    end

    def show
        game = Game.find(params[:id])
        render json: game, status: :ok
    end

    def create
        game = Game.create!(game_params)
        render json: game, status: :created
    end

    def update
        game = Game.find(params[:id])
        game.update!(game_params)
        render json: game, status: :ok
    end

    def destroy
        game = Game.find(params[:id])
        render json: game.destroy
        head :no_content
    end

    private

    def game_params
        params.permit(:equipment_title, :start_time_and_date, :location, :comment_id, :user_id, :num_of_players, :category_title)
    end

    def render_unprocessable_entity_response(e)
        render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
      end

    def render_not_found_response
        render json: { error: "Game not found"}, status: :not_found
    end
end
