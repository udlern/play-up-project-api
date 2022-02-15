class UsersController < ApplicationController
    skip_before_action :authorized, only: :create
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        render json: User.all, status: :ok
    end

    def show
        if current_user
          render json: current_user, status: :ok
        else
          render json: "No current session stored", status: :unauthorized
        end
      end

    def create
        user = User.create!(user_params)
        render json: user
    end

    def update
        user = User.find(params[:id])
        user.update!(user_params)
        render json: user, status: :ok
    end

    def destroy
        user = User.find(params[:id])
        render json: user.destroy
        head :no_content
    end

    private

    def user_params
        params.permit(:first_name, :last_name, :location, :password, :email, :url)
    end

    def render_unprocessable_entity_response(e)
        render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
      end

    def render_not_found_response
        render json: { error: "User not found"}, status: :not_found
    end

end
