class UsersController < ApplicationController
    before_action :must_be_admin

    def index
        @user = User.all
    end

    def destroy
        user = User.find(params[:id])
            if current_user != user
                if user.destroy
                    flash[:notice] = "Successfully deleted"
                else
                    flash[:alert] = "Error"
                end
            end
        redirect_to users_path
    end

    private

    def must_be_admin
        unless current_user.admin?
            redirect_to meetings_path, alert: "You don't have access to this page"
        end
    end

end