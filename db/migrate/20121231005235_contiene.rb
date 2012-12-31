class Contiene < ActiveRecord::Migration
  def change
    create_table :productos_recetas, :id => false do |t|
      t.references :producto
      t.references :receta
    end
  end
end
