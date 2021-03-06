Feature: BackOffice Scenarios

  Scenario: Verify that the BackOffice is Opened and redirected successfully
    Given  Navigate to Fly "stage" site
    When login into hub with super admin
    And  Open menu
    And  Open  "BackOffice"
    Then Assert that "backoffice" URL "stage" is opened successfully

  Scenario: Verify that agent can view the booked order
    When Book a "one way" trip from API for "stage" and get "order"
    And Open hub login page
    And login into hub with super admin
    And open Back office
    And Search for Order Number from Quick Search

  Scenario: Verify that agent can view Airline Reference for the booked order
    When Book a "one way" trip from API for "stage" and get "order"
    And Get data for this booking "john.smith.fly365@gmail.com"
    And Get StoreID
    And Open hub login page
    And login into hub with super admin
    And open Back office
    And Search for Order Number from Quick Search
    Then Assert that Airline reference is correct

  Scenario: Verify that agent can view Fly Reference for the booked order
    When Book a "one way" trip from API for "stage" and get "order"
    And Get data for this booking "john.smith.fly365@gmail.com"
    And Get StoreID
    And Open hub login page
    And login into hub with super admin
    And open Back office
    And Search for Order Number from Quick Search
    Then Assert that Fly reference is correct

  Scenario: Verify that agent can view store user for the booked order
    When Book a "one way" trip from API for "stage" and get "order"
    And Get data for this booking "john.smith.fly365@gmail.com"
    And Get StoreID
    And Open hub login page
    And login into hub with super admin
    And open Back office
    And Search for Order Number from Quick Search
    Then Assert that store user is correct

  Scenario: Verify that agent can view Payment Gateway for the booked order
    When Book a "one way" trip from API for "stage" and get "order"
    And Get data for this booking "john.smith.fly365@gmail.com"
    And Get StoreID
    And Open hub login page
    And login into hub with super admin
    And open Back office
    And Search for Order Number from Quick Search
    Then Assert that Payment Gateway is correct

  @backoffice
  Scenario: Verify that agent can view total price for the booked order
    When Book a "one way" trip from API for "stage" and get "order"
    And Get data for this booking "john.smith.fly365@gmail.com"
    And Get StoreID
    And Open hub login page
    And login into hub with super admin
    And open Back office
    And Search for Order Number from Quick Search
    Then Assert that total price is correct

  Scenario: Verify that agent can view discount campaign name and amount
   Given Open hub login page
    And login into hub with super admin
    And  Open Discount
    And  Click on Create Campaign
    And  Fill required data for discount rule
    And  Click on Submit
    Then Book a "one way" trip from API for "stage" and get "order"
    And Get data for this booking "john.smith.fly365@gmail.com"
    And Get StoreID
    And open Back office
    And Search for Order Number from Quick Search
    Then Assert that Discount campaign name is correct

