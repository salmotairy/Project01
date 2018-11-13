class AlbumsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  def home
    if current_user
      redirect_to albums_path
    end
  end

  def index
    @albums = Album.all
  end

  def show
    @album = Album.find_by(id: params[:id])
  end

  def new
    @album = Album.new
  end

  def create
    album = Album.create album_params
    redirect_to album_path(album)
  end

  def edit
    @album = Album.find_by(id: params[:id])
  end

  def update
    album = Album.find_by(id: params[:id])
    album.update(album_params)
    redirect_to album_path(album)
  end

  def destroy
    album = Album.find_by(id: params[:id])
    album.destroy
    redirect_to albums_path
  end

  private

  def album_params
    params.require(:album).permit(:name, :image, :location, :album_id)
  end
end
