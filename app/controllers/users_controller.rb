class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  def show
    @User = User.find_by(id: params[:id])
  end
end
