class CreateClientes < ActiveRecord::Migration
  def up
    create_table 'clientes' do |t|
      t.string 'nif'
      t.string 'nombre'
      t.string 'password'
      t.string 'n_cuenta'
      t.string 'direccion'
      #Foto
      t.timestamps
    end
  end

  def down
    drop_table 'clientes'
  end
end
