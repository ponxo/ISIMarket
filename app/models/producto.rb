class Producto < ActiveRecord::Base
   has_many :recetas
   attr_accessible :categoria, :nombre, :precio_venta, :precio_compra, :stock, :descripcion, :recetas
   # id(natural) es id(clave surrogada)
   # validates_uniqueness_of :id
   def self.all_categorias
    %w(verdura carne legumbre lacteo bebida otro)
  end
  
end
