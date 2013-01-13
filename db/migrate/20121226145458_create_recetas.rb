class CreateRecetas < ActiveRecord::Migration
  def up
    create_table 'receta' do |t|
      # t.string 'id'
      t.string 'titulo'
      t.text 'preparacion'
      t.integer 'puntuacion'
      t.references 'productos'
      t.timestamps
    end
  end

  def down
    drop_table 'receta'
  end
end
