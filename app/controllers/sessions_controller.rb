class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by(email: login_parms[:email])
        
        if user && user.authenticate(login_parms[:password])
            session[:user_id] = user.id
            binding.pry
            redirect_to dash_path
            #! todo redirect to dash
        else
            #! redierect back, flash error
        end
    end

    def destroy
        session.clear if session[:user_id] == current_user.id
    end

    private

    def login_parms
        params.require(:user).permit(:email, :password)
    end
end
