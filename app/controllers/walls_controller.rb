class WallsController < ApplicationController
  def index
    walls = Wall.all

    render json: walls.to_json()
  end

  def show

  end
  
  def create
  end

  def update
  end

  # def delete
  # end
end
