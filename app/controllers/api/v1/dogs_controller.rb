Dogclass Api::V1::DogsController < ApplicationController
  
  def index
    @dogs = Dog.all
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
  
private

  def dog_params
    params.permit(:name, :sex, :breed)
  end
  
end