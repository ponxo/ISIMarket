class ClientesController < ApplicationController
  def show
  end
  def index
  end
  def new
  end
  def create
	@cliente = Cliente.create!(params[:clientes])
	session[:nombre]= @cliente.nombre
	session[:password]= @cliente.password
	flash[:notice]="El usuario #{session[:nombre]} fue registrado con exito."
	redirect_to productos_path
  end
  def edit
  end
  def update
  end
  def destroy
  end
end
