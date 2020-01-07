class UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def signin
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      token = issue_token({id: user.id})
      render json: { token: token, user: user.to_json() }
    else
      render json: {error: 'Invalid credentials.'}, status: 401
    end
  end
  # JS Code for React App

  # signIn = user => {
  #   this.setState({username: user.username})
  #   localStorage.setItem('token', user.token)
  # }

  # signout = () => {
  #   this.setState({username: ''})
  #   localStorage.removeITem('token')
  # }

  # code for throwing error if user not found for JS side
  # .then(data => {
  #   if (data.error) throw Error(data.error)
  # })

  def validate
    user = get_current_user

    if user
      token = issue_token({id: user.id})
      render json: { token: token, user: user.to_json() }      #{username: user.username, userSkills: user.skills, userActivities: user.activities, userSkillZaps: user.skill_zaps, token: issue_token({id: user.id})}
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
