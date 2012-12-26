class CreateRecetas < ActiveRecord::Migration
  def up
    create_table 'recetas' do |t|
      t.string 'id'
      t.string 'titulo'
      t.text 'preparacion'
      t.integer 'puntuacion'
      t.timestamps
    end
  end

  def down
    drop_table 'recetas'
  end
end
