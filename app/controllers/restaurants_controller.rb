class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find_by(params[:id])
    @reviews = @restaurant.reviews
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurant_path(@restaurant), notice: 'Restaurant was successfully created.'
    else
      # Si no se guarda, renderizamos de nuevo el formulario 'new' con el estado 'unprocessable_entity'
      render :new, status: :unprocessable_entity
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end

end






  # SON 7 RUTAS:
  # INDEX = VISTA DE TODA LA PAGINA (TODO EL ARRAY) PAG. PRINCIPAL
  # SHOW = MUESTRA EL QUE DESEAS
  #  NEW = VA CON EL CREATE, ES EL GET. MUESTRA
  # CREATE = ENVIA EL FORMULARIO, ES EL POST, NO TIENE VISTA
  #  EDIT = VA CON EL EL UPDATE, MUESTRA EL FORM LLENO, ES EL GET
  #  UPPDATE = ES EL PATCH, ENVIA Y HACE LA ACTUALIZACION, NO TIENE VISTA
  # DESTROY = ELIMINA, NO TIENE VISTA
  # params[:id] = PARA IDENTIFICARLO

  # LAS ALIAS VAN CON REDIRECT_TO Y VAN CON LAS QUE NO TIENEN VISTA
