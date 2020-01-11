class WallsController < ApplicationController
  def index
    walls = Wall.all

    render json: walls.to_json()
  end

  def show
    wall = Wall.find(params[:id])

    render json: wall.to_json(:include => {:reviews => {:except => [:id, :user_id, :wall_id], :include => {:user => {only: [:username]}} }})
  end

  # def create
  # end

  # def update
  # end

  # def delete
  # end
end
