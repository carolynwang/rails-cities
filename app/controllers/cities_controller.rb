class CitiesController < ApplicationController

  def view
    @city = params[:city]
  end

  def new
  end

  def update
  end

  def delete
  end

  def create
      if City.all.key?(params[:name].to_sym) != true
          @city_params = {name: params[:name], landmark: params[:landmark], population: params[:population]}
          @newCity = City.new(@city_params)
          @newCity.save
      end
      redirect_to '/cities/view'
  end

  def postUpdate
      @city = $cities[params[:name].to_sym]
      if @city != nil
          @city.update({name: params[:name], landmark: params[:landmark], population: params[:population]})
          @city.save
      end
      redirect_to '/cities/view'
  end

  def postDelete
      if City.all.key?(params[:name].to_sym)
          City.all.delete(params[:name].to_sym)
      end
      redirect_to '/cities/view'
  end

  def returnToHome
      redirect_to '/'
  end
end
