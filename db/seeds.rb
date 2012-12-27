# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
mas_productos = [{:categoria => 'verdura',:nombre => 'Zanahoria',:precio_venta => 0.10, :precio_compra => 0.03, :stock => 200, :descripcion => 'un vegetal bueno para la salud y ponerse moreno'},
{:categoria => 'verdura',:nombre => 'Tomate',:precio_venta => 0.15, :precio_compra => 0.05, :stock => 200, :descripcion => 'es rojo'},
{:categoria => 'legumbre',:nombre => 'Arroz',:precio_venta => 1.15, :precio_compra => 0.80, :stock => 200, :descripcion => 'ideal para hacer paella'},
{:categoria => 'otro',:nombre => 'Ketchup',:precio_venta => 2, :precio_compra => 1, :stock => 200, :descripcion => 'salsa para hamburguesas'}]

Producto.send(:attr_accessible, :categoria ,:nombre, :precio_venta,:precio_compra,:stock, :descripcion)
mas_productos.each do |producto|
  Producto.create!(producto)
end