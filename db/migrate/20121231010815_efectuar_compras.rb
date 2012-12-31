class EfectuarCompras < ActiveRecord::Migration
  def change
    create_table :efectuar_compras, :id => false do |t|
      t.references :producto
      t.references :cliente
      t.references :compra
    end
  end
end
