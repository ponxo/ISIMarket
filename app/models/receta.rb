class Receta < ActiveRecord::Base
   attr_accessible :titulo, :preparacion, :puntuacion
   # id(natural) es id(clave surrogada)
   # validates_uniqueness_of :id
end
