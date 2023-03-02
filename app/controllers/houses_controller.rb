class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  def new
    @house = House.new
  end

  def create
    @house = House.new(house_params)
    @house.save
    redirect_to house_path(@house)
  end

  # VOY POR ACAAAAAAAAAAAAAAAAAAAAA

  private

  def house_params
    params.require(:house).permit(:provincia, :departamento, :localidad,
                                  :barrio, :domicilio, :tipo, :condicion, :precio,
                                  :descripcion, :foto, :cochera, :dormitorio, :bano, :supcubierta, :suptotal, :mascota,
                                  :expensa)
  end
end
