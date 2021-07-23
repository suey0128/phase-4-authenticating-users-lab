class SessionsController < ApplicationController
    def create
        #find the user
        user = User.find_by(username: params[:username])
        #if user found 
        if user
            #use the user id as the key/value pasir in the session hash
            session[:user_id] = user.id
            #render json to send the user info back to the frontend
            render json: user
        else
            render json: {error: "User not found"}, status: :not_found
        end
    end

    def destroy
        session.delete :user_id
        head :no_content
    end
end
