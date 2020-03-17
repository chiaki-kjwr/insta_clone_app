class UsersController < ApplicationController
   def show
    @user = User.find_by(id: params[:id])
   end
   
   def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    redirect_to("/")
   end
   
   
end
