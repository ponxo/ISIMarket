class Producto < ActiveRecord::Base
   attr_accessible :id, :categoria, :nombre, :precio_venta, :precio_compra, :stock, :descripcion
end
