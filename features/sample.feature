Feature: I login as the specfic role

  Scenario: Login as the "administrator" role

    When I login as the "administrator" role
    Then I should see "Welcome to the VCCW"

  Scenario: Take a screenshot

    Given the screen size is 1440x900
    And I login as the "administrator" role

    When I am on "/"
    Then take a screenshot and save it to "_out/1440x900.png"

    When I am on "/wp-admin/"
    Then take a screenshot and save it to "_out/1440x900-wp-admin.png"

    Given the screen size is 320x400

    When I am on "/"
    Then take a screenshot and save it to "_out/320x400.png"

    When I am on "/wp-admin/"
    Then take a screenshot and save it to "_out/320x400-wp-admin.png"
