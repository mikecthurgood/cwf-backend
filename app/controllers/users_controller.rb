class UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def signin
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      token = issue_token({id: user.id})
      render json: { token: token, user: user }
    else
      render json: {error: 'Invalid credentials.'}, status: 401
    end
  end
  

  def validate
    user = get_current_user

    if user
      token = issue_token({id: user.id})
      render json: { token: token, user: user }      #{username: user.username, userSkills: user.skills, userActivities: user.activities, userSkillZaps: user.skill_zaps, token: issue_token({id: user.id})}
    else
      render json: {error: 'Unable to validate user.'}, status: 401
    end
  end

  
  def create
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :city, :bio)
  end
end
