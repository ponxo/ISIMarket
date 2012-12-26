class Compra < ActiveRecord::Base
   attr_accessible :coste, :fecha
   # n_factura es id(clave surrogada)
   # validates_uniqueness_of :n_factura
end
