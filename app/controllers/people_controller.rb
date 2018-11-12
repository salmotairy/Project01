class PeopleController < ApplicationController
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
    person = Person.create person_params
    redirect_to person_path(person)
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
    params.require(:person).permit(:first_name, :last_name, :album_id)
  end
end
