class UsersController < ApplicationController
    def show
        #find the user 
        user = User.find_by(id: session[:user_id])
        if user
            #render the user info back to frontend
            render json: user
        else
            render json: { error: "Not authorized" }, status: :unauthorized
        end
    end
end
