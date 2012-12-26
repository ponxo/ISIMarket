class Receta < ActiveRecord::Base
   attr_accessible :id, :titulo, :preparacion, :puntuacion
   validates_uniqueness_of :id
end
