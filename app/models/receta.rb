class Receta < ActiveRecord::Base
   has_many :productos
   attr_accessible :titulo, :preparacion, :puntuacion, :productos
   # id(natural) es id(clave surrogada)
   # validates_uniqueness_of :id
   
end
