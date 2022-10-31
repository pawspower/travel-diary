class CitiesController < ApplicationController
    def index
        @cities = City.all
    end

    def show
        @city = City.find params[:id]
    end

    def new
        @city = City.new
    end

    def create
        city = City.create city_params
        redirect_to city # GET to #show
    end

    def edit
        @city = City.find params[:id]
    end

    def update
        city = City.find params[:id]
        city.update city_params
        redirect_to city
    end

    def destroy
        city = City.find params[:id]
        city.destroy
        redirect_to city_path
    end

    private
    # strong params: a way to sanitise data from the form by ensuring it's on our safe list
    def city_params
        params.require(:city).permit(:name, :date, :image, :note)
    end
end