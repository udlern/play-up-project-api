class EquipmentController < ApplicationController
    
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        render json: Equipment.all, status: :ok
    end

    def show
        equipment = Equipment.find(params[:id])
        render json: equipment, status: :ok
    end

    def create
        equipment = Equipment.create!(equipment_params)
        render json: equipment, status: :created
    end

    def update
        equipment = Equipment.find(params[:id])
        equipment.update!(equipment_params)
        render json: equipment, status: :ok
    end

    def destroy
        equipment = Equipment.find(params[:id])
        render json: equipment.destroy
        head :no_content
    end

    private

    def equipment_params
        params.permit(:equipment_title)
    end

    def render_unprocessable_entity_response(e)
        render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
      end

    def render_not_found_response
        render json: { error: "Equipment not found"}, status: :not_found
    end
end
