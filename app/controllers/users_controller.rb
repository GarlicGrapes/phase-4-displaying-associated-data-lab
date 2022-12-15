class UsersController < ApplicationController
    def show 
        user = User.find_by(id: params[:id])
        render json: user, include: :items
    end

    # def index
    #     users = Users.all
    #     render json: users, include: :item
    # end
end
