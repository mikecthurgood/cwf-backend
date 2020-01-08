class ReviewsController < ApplicationController
  def index
    reviews = Review.all

    render json: reviews.to_json(:include => { :user => {:only => [:username]}, :wall => {:only => [:name]}})
  end

  def show
    review = Review.find(params[:id])
    wall = Wall.find(review.wall_id)

    render json: review.to_json(:include => { :user => {:only => [:username]}, :wall => {:only => [:name]}})

  end

  def create
    # user = get_current_user
    user = User.find(params[:user_id])
    wall = Wall.find(params[:wall_id])
    review = Review.new(content: params[:content], rating: params[:rating], wall: wall, user: user)
    if user
      if review.save
        render json: review.to_json(:include => { :user => {:only => [:username], :wall => {:only => [:name]}}})
      else
        render json: {error: 'Failed to create your review'}, status: 400
      end
    else
      render json: {error: 'Unable to validate user.'}, status: 401
    end 
  end

  def update
    review = Review.find(params[:id])
    if review.user_id == params[:user_id]
        review.update(content: params[:content], rating: params[:rating])
        render json: review.to_json(:include => { :user => {:only => [:username], :wall => {:only => [:name]}}})
    else
      render json: {error: 'Only the author can edit their review.'}, status: 401
    end 
  end

  def delete
    review = Review.find(params[:id])
    review.delete()
    render json: {status: 'review deleted'}
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :wall_id, :user_id)
  end
  
end
