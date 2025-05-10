class UsersController < ApplicationController

    def index 
        @users = User.all
    end

    def show 
        @user = User.find(params[:id])
    end

    def new
      redirect_to @user, notice: "User was successfully created."
    end

    def create
        user = User.new(name:params[:user][:name] age:params[:user][:age] track: params[:user][:track])
        if user.save
            redirect_to user
        else
            render :new, status: :unprocessable_entity
        end

    end
    
    def edit 
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.name = params[:user][:name]
        @user.age = params[:user][:age]
        @user.track = params[:user][:track]
        if @user.()
        if @user.save
            redirect_to @user, notice: "user updated succesfully"
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy 
        redirect_to users_path, notice: "User was successfully deleted."
    end
        
end