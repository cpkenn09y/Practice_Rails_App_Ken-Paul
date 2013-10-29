class UsersController < ApplicationController

  def index
    @ken = User.new
  end

  def create
    @ken = User.new params[:user]
    if @ken.save
      redirect_to root_path
    else
      # do something
    end
  end

  # def destroy
  #   p params
  # end


end