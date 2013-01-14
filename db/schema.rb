# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121231010815) do

  create_table "clientes", :force => true do |t|
    t.string   "nif"
    t.string   "nombre"
    t.string   "password"
    t.string   "n_cuenta"
    t.string   "direccion"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "compras", :force => true do |t|
    t.float    "coste"
    t.datetime "fecha"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "efectuar_compras", :id => false, :force => true do |t|
    t.integer "producto_id"
    t.integer "cliente_id"
    t.integer "compra_id"
  end

  create_table "productos", :force => true do |t|
    t.string   "categoria"
    t.string   "nombre"
    t.float    "precio_venta"
    t.float    "precio_compra"
    t.integer  "stock"
    t.text     "descripcion"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "productos_recetas", :id => false, :force => true do |t|
    t.integer "producto_id"
    t.integer "receta_id"
  end

  create_table "recetas", :force => true do |t|
    t.string   "titulo"
    t.text     "preparacion"
    t.integer  "puntuacion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
