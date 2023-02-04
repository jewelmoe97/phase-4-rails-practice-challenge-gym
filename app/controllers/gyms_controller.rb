class GymsController < ApplicationController


    def index
        gyms = Gym.all
        render json: gyms
      end
    
      
      def show
        gym= Gym.find_by(id: params[:id])
        if gym
          render json: gym
        else
          render json: { error: "Gym not found" }, status: :not_found
        end
      end


      def destroy
        gym = Gym.find(params[:id])
        gym.destroy!
        head :no_content
    end

end
