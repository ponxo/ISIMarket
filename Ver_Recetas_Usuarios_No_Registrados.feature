Feature: Ver Recetas Usuarios No Registrados
    Como Usuario no registrado
    Para que yo pueda encontrar recetas que me gustan
    Yo quiero poder ver las recetas relacionadas con productos

Senario: Existe receta
    Given I am on the ISIMarket home page
    When I follow "Productos"
    Then I should be on the Productos page
    And I should see "Arroz"
    And I follow "Recetas con Arroz"
    Then I should see "Paella"

Senario: No existe receta
    Given I am on the ISIMarket home page
    When I follow "Productos"
    Then I should be on the Productos page
    And I should see "Zanahoria"
    And I follow "Recetas con Zanahoria"
    Then I should be on the Productos page
    And I should see "No hay recetas con Zanahoria"
