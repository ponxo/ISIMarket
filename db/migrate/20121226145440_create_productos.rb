class CreateProductos < ActiveRecord::Migration
  def up
    create_table 'productos' do |t|
      # t.string 'id'
      t.string 'categoria'
      t.string 'nombre'
      t.float 'precio_venta'
      t.float 'precio_compra'
      t.integer 'stock'
      t.text 'descripcion'
      t.references 'receta'
      #FOTO
      t.timestamps
    end
  end

  def down
    drop_table 'productos'
  end
end
