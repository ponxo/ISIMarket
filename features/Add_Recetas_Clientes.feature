Feature: Add Recetas Clientes
    Como cliente
    Para que yo pueda compartir mis recetas con otros usuarios
    Yo quiero poder añadir mis propias recetas

Scenario: Añadir una receta
    Given I am on the Productos page
    When I follow "Añadir nueva receta"
    Then I should be on the Nueva Receta page
    And I fill in "Title" with "Paella"
    And I select "Arroz" from "Tag"
    And I press "Guardar Receta"
    Then I should be on the Recetas con Arroz page
    And I should see "Receta Creada"
