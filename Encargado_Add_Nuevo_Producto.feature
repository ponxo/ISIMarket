Feature: Encargado Add Nuevo Producto
    Como Encargado
    Par que mis usuarios puedan disfrutar de una gran variedad de productos
    Yo quiero poder comprar nuevos productos

Scenario: Comprar un producto
    Given I am on the Encargado page
    When I follow "Comprar nuevo producto"
    Then I should be on the nuevo producto page
    And I fill in "Nombre" with "Jamon"
    And I fill in "Precio compra" with "3"
    And I fill in "Precio venta" with "5"
    And I fill in "Stock" with "10"
    And I press "Añadir Producto"
    Then I should be on Encargado page
    And I should see "Nuevo Producto Añadido "
