class HeroPowersController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
      hero_power = HeroPower.new(hero_power_params)
  
      if hero_power.save
        render json: hero_power.hero, include: :powers, status: :created
      else
        render json: { errors: hero_power.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    private
  
    def hero_power_params
      params.permit(:strength, :power_id, :hero_id)
    end
end
