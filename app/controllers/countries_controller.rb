class CountriesController < ApplicationController
    def index
        @countries = Country.all
    end

    def show
        @country = Country.find params[:id]
    end

    def new
        @country = Country.new
    end

    def create
        country = Country.create country_params
        redirect_to country # GET to #show
    end

    def edit
        @country = Country.find params[:id]
    end

    def update
        country = Country.find params[:id]
        country.update country_params
        redirect_to country
    end

    def destroy
        country = Country.find params[:id]
        country.destroy
        redirect_to countries_path
    end

    private
    # strong params: a way to sanitise data from the form by ensuring it's on our safe list
    def country_params
        params.require(:country).permit(:name, :date, :note, :country_id)
    end
end