class Efectuar_compra < ActiveRecord::Base
  belongs_to :clientes
  belongs_to :productos
  belongs_to :compras
  validates_presence_of :clientes
  validates_presence_of :productos
  validates_presence_of :compras

end
