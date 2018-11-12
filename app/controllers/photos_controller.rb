class PhotosController < ApplicationController
  def index
    @Photos = Photo.all
  end

  def show
    @photo = Photo.find_by(id: params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    photo = Photo.create photo_params
    redirect_to photo_path(photo)
  end

  def edit
    @photo = Photo.find_by(id: params[:id])
  end

  def update
    photo = Photo.find_by(id: params[:id])
    photo.update(photo_params)
    redirect_to photo_path(photo)
  end

  def destroy
    photo = Photo.find_by(id: params[:id])
    photo.destroy
    redirect_to Photo.album_path
  end

  private

  def photo_params
    params.require(:photo).permit(:image, :album_id)
  end
end
