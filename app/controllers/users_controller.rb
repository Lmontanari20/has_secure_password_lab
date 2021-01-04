class UsersController < ApplicationController

    # user homepage
    def show

    end

    # sign up form
    def new

    end
    
    # creates a new user
    def create
        # byebug
        if params[:user][:password] == params[:user][:password_confirmation]
            user = User.create(user_params)
            session[:user_id] = user.id
        else 
            redirect_to '/new/user'
        end
    end

    private
    
    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end

end