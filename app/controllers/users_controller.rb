class UsersController < ApplicationController
    def def new
        @user = user.new
    end

    def create
        binding.pry
        @user = User.new(new_user_params)

        if @user.save
            session[:user_id] = @user.id
            redierect_to dashboard_path()
            #! rediect to dashboard
        else
            #! todo: add flash messages and redirect back
        end
    end

    private

    def new_user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
    
end
