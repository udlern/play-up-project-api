class UsersGamesController < ApplicationController

        
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        render json: UsersGame.all, status: :ok
    end

    def show
        user_game = UsersGame.find(params[:id])
        render json: user_game, status: :ok
    end

    def create
        user_game = UsersGame.create!(users_game_params)
        render json: user_game, status: :created
    end

    def update
        user_game = UsersGame.find(params[:id])
        user_game.update!(users_game_params)
        render json: user_game, status: :ok
    end

    def destroy
        user_game = UsersGame.find(params[:id])
        render json: user_game.destroy
        head :no_content
    end

    private

    def users_game_params
        params.permit(:user_id, :game_id)
    end

    def render_unprocessable_entity_response(e)
        render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
      end

    def render_not_found_response
        render json: { error: "Users games not found"}, status: :not_found
    end
end
