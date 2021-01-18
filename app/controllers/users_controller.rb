class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        @events = current_user.events
    end

end
