class PeopleController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  def index
    @people = Person.all
  end

  def show
    @person = Person.find_by(id: params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    if params[:person][:photo_id]
      photo = Photo.find_by(id: params[:person][:photo_id])
      names = params[:person][:name].split(", ")
      names.each do |name|
        unless photo.people.find_by(name: name)
          photo.people << Person.find_or_create_by(name: name)
        end
      end
      redirect_to photo_path(photo)
    else
      person = Person.find_or_create_by person_params
      redirect_to person_path(person)
    end
  end

  def edit
    @person = Person.find_by(id: params[:id])
  end

  def update
    person = Person.find_by(id: params[:id])
    person.update(person_params)
    redirect_to person_path(person)
  end

  def destroy
    person = Person.find_by(id: params[:id])
    person.destroy
    redirect_to person.photo.album_path
  end

  private

  def person_params
    params.require(:person).permit(:name)
  end
end
