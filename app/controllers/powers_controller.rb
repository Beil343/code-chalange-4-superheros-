class PowersController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index 
     powers =Power.all 
     render json: powers 
    end

    def show 
        begin
          power = Power.find(params[:id])
          render json: power, status: :ok
        rescue ActiveRecord::RecordNotFound
          render json: { error: "Power not found" }, status: :not_found
        end
      end
      

      def update
        power = Power.find_by(id: params[:id])
        if power
          if power.update(power_params)
            render json: power, status: :ok
          else
            render json: { errors: power.errors.full_messages }, status: :unprocessable_entity
          end
        else
          render json: { error: "Power not found" }, status: :not_found
        end
      end
      

    private 
    def power_params 
     params.permit(:description)
    end
end
