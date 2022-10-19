class ClientsController < ApplicationController
  def show
    client = Client.find(params[:id])
    # byebug
    sum = client.memberships.sum(:charge)
    render json: {
      name: client.name, 
      age: client.age, 
      membership_total: sum
      }
  end
end
