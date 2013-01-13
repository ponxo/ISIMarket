class RecetasController < ApplicationController
  def show
    @receta = Receta.find_by_id(params[:id])
    @productos = @receta.productos # maaaaal hay que ponerle para q sean los productos de esa receta
    if not @receta then
      flash[:warning]= 'Receta no encontrada'
      redirect_to recetas_path
    end
  end
  def index
    @recetas = Receta.all
  end
  def new
    @productos= Producto.all
    # solo disponible para mordo cliente
  end
  def create
    @receta = Receta.create!(params[:receta])
    @A=Array.new
    #logger.debug(params.inspect)
    productos =params[:producto]
    productos. map do |producto|
  	  if producto[1] =='1' then
  		  @A<< Producto.find_by_nombre(producto[0])
  	  end
  	end
    #@productos = @A
    #@receta.productos = @productos
    
    flash[:notice] = "#{@receta.titulo} creada."
   # redirect_to receta_path(@receta)
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