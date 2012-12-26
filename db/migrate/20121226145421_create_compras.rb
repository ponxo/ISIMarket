class CreateCompras < ActiveRecord::Migration
  def up
    create_table 'compras' do |t|
      t.string 'n_factura'
      t.float 'coste'
      t.datetime 'fecha'
      t.timestamps
    end
  end

  def down
    drop_table 'compras'
  end
end
