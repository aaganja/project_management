class PeopleController < ApplicationController
  def index
  @people = Person.all
  end

  def edit
  @person = Person.find(params[:id])
  end

  def new
  @person =Person.new()
  end

  def create
  @person = Person.new(params[:person])
  @person.save!
  redirect_to (people_path)
  end

  def destroy
   @person = Person.find(params[:id])
  @person.destroy
  redirect_to (people_path)
  end

  def show
  @person = Person.find(params[:id])
  end

  def update
  @person = Person.find(params[:id])
  @person.save!
  @person.update_attributes(params[:person])
  redirect_to (people_path)
  end

end
