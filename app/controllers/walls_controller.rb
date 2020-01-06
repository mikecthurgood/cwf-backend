class WallsController < ApplicationController
  def index
    walls = Wall.all

    render json: walls.to_json()
  end

  def show
    wall = Wall.find(params[:id])
      render json: wall.to_json()
  end
  
  def create
  end

  def update
  end

  # def delete
  # end
end
