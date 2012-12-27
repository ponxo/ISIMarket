class ProductosController < ApplicationController
  def show
  end
  def index
    @productos = Producto.all
    if params[:comprado] then
      flash[:notice]= "#{params[:comprado]} incluido en la cesta"
      redirect_to productos_path
    end
  end
  def new
  end
  def create
  end
  def edit
  end
  def update
  end
  def destroy
  end
end