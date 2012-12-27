Feature: Cliente Compra Producto
    Como cliente
    Para que yo pueda tener productos en casa
    Yo quiero poder comprar productos

Scenario: Comprar Productos
    Given I am on the Productos page
    When I should see "Arroz"
    And I follow "Comprar Arroz"
    Then I should see "Arroz añadido al carro"
    And I follow "Compra Actual:"
    Then I should be on the Compra Actual page
    And I should see "Arroz"
    And I follow "Comprar"
    Then I should see "Compra realizada"

