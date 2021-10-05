class UsersController < ApplicationController

    def index 
        users = User.all 
        render json: users, only: [:username, :email]
    end  

end
