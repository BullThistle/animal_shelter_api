class Api::V1::CatsController < ApplicationController
  
  def index
    
  end
  
private

  def cat_params
    params.permit(:name, :sex, :breed)
  end
  
end