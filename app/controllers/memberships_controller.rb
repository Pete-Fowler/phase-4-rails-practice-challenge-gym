class MembershipsController < ApplicationController
  def create 
    mem = Membership.create!(mem_params)
    render json: mem
  end 

  private

  def mem_params
    params.permit(:gym_id, :client_id, :charge)
  end
end
