class RecetasController < ApplicationController
  def show
    @receta = Receta.find_by_id(params[:id])
    if not @receta then
      flash[:warning]= 'Receta no encontrada'
      redirect_to recetas_path
    end
  end
  def index
    @recetas = Receta.all
  end
  def new
    # solo disponible para modo cliente
  end
  def create
    @receta = Receta.create!(params[:producto])
    flash[:notice] = "#{@receta.titulo} creada."
    redirect_to receta_path(@receta)
    # solo disponible para modo cliente
  end
  #def edit
    #@receta = Receta.find params[:id]
    # A lo mejor no deberiamos implementar este metodo! o solo para el cliente que la crea
  #end
  #def update
    #@receta = Receta.find params[:id]
    #@receta.update_attributes!(params[:prodcuto])
    #flash[:notice] = "#{@receta.titulo} Acualizada."
    #redirect_to receta_path(@receta)
    # A lo mejor no deberiamos implementar este metodo! o solo para el cliente que la crea
  #end
  def destroy
    @receta = Receta.find(params[:id])
    @receta.destroy
    flash[:notice] = "#{@receta.titulo} eliminada."
    redirect_to recetas_path
    # solo disponible para modo cliente (el q la crea)
  end
end