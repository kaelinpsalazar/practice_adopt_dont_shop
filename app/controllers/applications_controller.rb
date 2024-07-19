class ApplicationsController < ApplicationController
  def show
    @application = Application.find(params[:id])
    # @pets = Pet.find_pet_by_name(params[:name])
  end
end