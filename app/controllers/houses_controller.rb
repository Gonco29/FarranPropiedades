class HousesController < ApplicationController
  # before_action :set_user, only: %i[new create edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_house, only: %i[show edit update destroy]

  def index
    if params[:query].present?
      @houses = House.search_houses(params[:query])
    else
      @houses = House.all
    end

    @houses = House.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @houses.geocoded.map do |house|
      {
        lat: house.latitude,
        lng: house.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { house: house }),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show
    @marker = {
      lat: @house.latitude,
      lng: @house.longitude,
      info_window_html: render_to_string(partial: "info_window", locals: { house: @house }),
      marker_html: render_to_string(partial: "marker")
    }
  end

  def new
    @house = House.new
  end

  def create
    @house = House.new(house_params)
    @house.user_id = current_user.id
    if @house.save
      redirect_to house_path(@house)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @house.update(house_params)
    redirect_to house_path(@house)
  end

  def destroy
    @house.destroy
    redirect_to houses_path, status: :see_other
  end

  private

  def house_params
    params.require(:house).permit(:provincia, :departamento, :localidad,
                                  :barrio, :domicilio, :tipo, :condicion, :precio,
                                  :descripcion, :foto, :cochera, :dormitorio, :bano, :supcubierta, :suptotal, :mascota,
                                  :user_id, :expensa, :address, photos: [])
  end

  def set_house
    @house = House.find(params[:id])
  end
end
