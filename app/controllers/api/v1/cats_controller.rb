class Api::V1::CatsController < ApplicationController
  
  def index
    breed = params[:breed]
    if breed
      @cats = Cat.search_breed(breed)
    else
      @cats = Cat.all
    end
    json_response(@cats)
  end
  
  def show
    @cat = Cat.find(params[:id])
    json_response(@cat)
  end
  
  def create
    @cat = Cat.create!(cat_params)
    json_response(@cat, :created)
  end
  
  def update
    if @cat.update!(cat_params)
      render status: 200, json: {
        message: "This cat's info has been updated successfully."
      }
    end
  end
  
  def destroy
    @cat = Cat.find(params[:id])
    @cat.destroy
  end
  
  def random
   @cat = Cat.random
   json_response(@cat)
  end
  
private
  
  def json_response(object)
    render json: object, status: :ok
  end

  def cat_params
    params.permit(:name, :sex, :breed)
  end
  
end