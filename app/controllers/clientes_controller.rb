class ClientesController < ApplicationController
  def show
  @compra = session[:compra]
  @cliente = session[:cliente]
  end
  def index
  end
  def new
  end
  def create
	@cliente = Cliente.create!(params[:clientes])
	session[:cliente]= @cliente
	total = 0
	productos = []
	session[:compra]= [total,productos] 
	flash[:notice]="El usuario #{session[:nombre]} fue registrado con exito."
	redirect_to productos_path
  end
  def edit
  end
  def update
  end
  def destroy
  end
  def comprar
    flash[:notice]="compra realizada con exito, total = #{session[:compra][0]}"
    total = 0
	productos = []
	session[:compra]= [total,productos]
	redirect_to cliente_path(session[:cliente])
  end
  def cancelar
    flash[:notice]="compra cancelada"
    total = 0
	productos = []
	session[:compra]= [total,productos]
	redirect_to cliente_path(session[:cliente])
  end
end
