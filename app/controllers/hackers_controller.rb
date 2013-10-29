class HackersController < ApplicationController

  def index
    @ken = User.new
    @users = User.all
  end

  def create
    @ken = User.new params[:user]
    if @ken.save
      redirect_to root_path
    else
      # do something
    end
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to root_path
  end

end