class Api::V1::DogsController < ApplicationController
  
  def index
    breed = params[:breed]
    if breed
      @dogs = Dog.search_breed(breed)
    else
      @dogs = Dog.all
    end
    json_response(@dogs)
  end
  
  def show
    @dog = Dog.find(params[:id])
    json_response(@dog)
  end
  
  def create
    @dog = Dog.create!(dog_params)
    json_response(@dog, :created)
  end
  
  def update
    if @dog.update!(dog_params)
      render status: 200, json: {
        message: "This dog's info has been updated successfully."
      }
    end
  end
  
  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
  end
  
  def random
   @dog = Dog.random
   json_response(@dog)
  end
  
private

  def json_response(object)
    render json: object, status: :ok
  end

  def dog_params
    params.permit(:name, :sex, :breed)
  end
  
end