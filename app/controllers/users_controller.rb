class UsersController < ApplicationController
  def show
    @User = User.find_by(id: params[:id])
  end
end
