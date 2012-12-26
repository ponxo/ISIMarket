class Producto < ActiveRecord::Base
   attr_accessible :id, :categoria, :nombre, :precio_venta, :precio_compra, :stock, :descripcion
   validates_uniqueness_of :id
end
