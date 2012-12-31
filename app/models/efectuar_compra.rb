class Efectuar_compra < ActiveRecord::Base
  belongs_to :clientes
  belongs_to :productos
  bleongs_to :compras
  validates_presence_of :clientes
  validates_presence_of :productos
  validates_presence_of :compras

end
