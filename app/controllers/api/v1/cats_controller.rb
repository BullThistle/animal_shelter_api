class Api::V1::CatsController < ApplicationController
  
  def index
    @cats = Cat.all
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
  
private

  def cat_params
    params.permit(:name, :sex, :breed)
  end
  
end