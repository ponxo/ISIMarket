class Cliente < ActiveRecord::Base
   attr_accessible :nif, :nombre, :password, :n_cuenta, :direccion
   validates_uniqueness_of :nif
end
