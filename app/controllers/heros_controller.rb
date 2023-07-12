class HerosController < ApplicationController
    def index 
      heros = Hero.all 
      render json: heros, status: :ok
    end
  
    def show 
      hero = Hero.find_by(id: params[:id])
      if hero 
        render json: hero, status: :ok
      else 
        render json: { error: "Hero not found" }, status: :not_found
      end
    end
  end
