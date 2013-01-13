class ProductosController < ApplicationController
  def show
    @producto = Producto.find_by_id(params[:id])
    if not @producto then
      flash[:warning]= 'Producto no encontrado'
      redirect_to productos_path
    end
  end
  def index
    @all_categorias = Producto.all_categorias
    @selected_categorias = params[:categorias] || {}
    if @selected_categorias == {}
      @selected_categorias = Hash[@all_categorias.map {|categoria| [categoria, categoria]}]
    end
    @productos = Producto.find_all_by_categoria(@selected_categorias.keys)
    if params[:comprado] then
      flash[:notice]= "#{params[:comprado]} incluido en la cesta"
      redirect_to productos_path
    end
  end
  def new
    # default: render 'new' template
    # solo disponible para modo encargado
  end
  def create
    @producto = Producto.create!(params[:producto])
    flash[:notice] = "#{@producto.nombre} creado."
    redirect_to producto_path(@producto)
    # solo disponible para modo encargado
  end
  def edit
    @producto = Producto.find_by_id(params[:id])
    # solo disponible para modo encargado
  end
  def update
    @producto = Producto.find_by_id(params[:id])
    @producto.update_attributes!(params[:producto])
    flash[:notice] = "#{@producto.nombre} Acualizado."
    redirect_to producto_path(@producto)
    # solo disponible para modo encargado
  end
  def destroy
    @producto = Producto.find(params[:id])
    @producto.destroy
    flash[:notice] = "#{@producto.nombre} eliminado."
    redirect_to productos_path
    # solo disponible para modo encargado
  end
end