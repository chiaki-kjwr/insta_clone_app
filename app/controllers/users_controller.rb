class UsersController < ApplicationController
 def show
  @user = User.find_by(id: params[:id]) 
 end
   
 def destroy
  @user = User.find_by(id: params[:id])
  @user.destroy
  redirect_to("/")
 end
   
 def following
  @title = "Following"
  @user  = User.find(params[:id])
  @users = @user.following
  render 'show_follow'
 end

 def followers
  @title = "Followers"
  @user  = User.find(params[:id])
  @users = @user.followers
  render 'show_follow'
 end
   
   
end
