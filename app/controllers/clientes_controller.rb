class ClientesController < ApplicationController
  def show
  @compra = session[:compra]
  @cliente = Cliente.find(params[:id])
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
  
  def login
  end
  
  def entrar
    @cliente= Cliente.find_by_nif(params[:cliente][:nif])
    if @cliente.nombre  and @cliente.password == params[:cliente][:pass] then
      session[:cliente]= @cliente
	  total = 0
	  productos = []
	  session[:compra]= [total,productos]
	  redirect_to productos_path
	else 
	  flash[:notice]="fallo de autenticacion"
	  redirect_to login_path
	end
  end
  
  def logout
    session[:cliente]= nil
    total = 0
	productos = []
	session[:compra]= [total,productos]
	flash[:notice]="sesion cerrada"
	redirect_to homepage_index_path
  end
  
end
