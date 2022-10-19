class GymsController < ApplicationController
  def create 
    gym = Gym.create!(gym_params)
    render json: gym
  end 

  def show 
    gym = Gym.find(params[:id])
    render json: gym
  end

  def destroy 
    gym = Gym.find(params[:id])
    gym.destroy
    render json: {}, status: :accepted
  end 

  private

  def gym_params 
    params.permit(:name, :address)
  end
end
