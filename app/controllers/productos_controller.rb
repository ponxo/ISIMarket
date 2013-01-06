class ProductosController < ApplicationController
  def show
    @producto = Producto.find_by_id(params[:id])
    if not @producto then
      flash[:warning]= 'Producto no encontrado'
      redirect_to productos_path
    end
  end
  def index
    @productos = Producto.all
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
    @producto = Producto.find params[:id]
    # solo disponible para modo encargado
  end
  def update
    @producto = Producto.find params[:id]
    @prodcuto.update_attributes!(params[:prodcutos])
    flash[:notice] = "#{@producto.name} Acualizado."
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