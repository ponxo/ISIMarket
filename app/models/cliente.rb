class Cliente < ActiveRecord::Base
   attr_accessible :nif, :nombre, :password, :n_cuenta, :direccion
end
