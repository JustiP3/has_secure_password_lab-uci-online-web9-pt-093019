class UsersController < ApplicationController
    def new
    end 
    def create       
        if params[:user][:password] == params[:user][:password_confirmation]
            user = User.create(name: params[:user][:name], password: params[:user][:password])
            session[:user_id] = user.id 
        else 
            redirect_to new_user_path
        end 
    end 
end
