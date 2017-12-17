class Api::V1::DogsController < ApplicationController
  
  def index
    
  end
  
  private

    def dog_params
      params.permit(:name, :sex, :breed)
    end
    
end