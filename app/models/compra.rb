class Compra < ActiveRecord::Base
   attr_accessible :n_factura, :coste, :fecha
   validates_uniqueness_of :n_factura
end
