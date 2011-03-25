Feature: 
  As an iOS developer
  I want to have a sample feature file
  So I can see what my next step is in the wonderful world of Frank/Cucumber testing
  
  Scenario:
    A user completes the quiz and wants to return to the start without doing it the hard way
    
    Given I launch the app
    Then I should see "Is this Bulbasaur?"

    When I touch "Yes"
    Then I should see "Does Steve Ballmer like developers?"

    When I touch "No"
    Then I should see "Sonic the Hedgehogs main characters name was Steve"

    When I touch "Yes"
    Then I should see "Did Optimus Prime rise from the dead?"

    When I touch "Yes"
    Then I should see "Is Coca Cola superior to Pepsi?"

    When I touch "No"
    Then I should see "Did Han Solo shoot first?"

    When I touch "No"
    Then I should see "Are there only 3 Indianna Jones films?"

    When I touch "Yes"
    Then I should see "Was Jar Jar Binks character good in Star Wars Episode I"

    When I touch "No"
    Then I should see "Is Mac better than PC?"

    When I touch "Yes"
    Then I should see "Did James Kirk only have one son?"

    When I touch "No"
    Then I should see "6 out of 10 correct"
    And I should see "You are mostly a nerd, mostly."
    
    When I touch "Reset" 
    Then I should see "Is this Bulbasaur?"

  Scenario:
    Rotating the simulator for demonstration purposes

    Given I launch the app
    And the device is in landscape orientation
    And the device is in portrait orientation
    And the device is in landscape orientation
    And the device is in portrait orientation

  Scenario:
    Getting only some of the answers right

    Given I launch the app
    Then I should see "Is this Bulbasaur?"

    When I touch "Yes"
    Then I should see "Does Steve Ballmer like developers?"

    When I touch "No"
    Then I should see "Sonic the Hedgehogs main characters name was Steve"

    When I touch "Yes"
    Then I should see "Did Optimus Prime rise from the dead?"

    When I touch "Yes"
    Then I should see "Is Coca Cola superior to Pepsi?"

    When I touch "No"
    Then I should see "Did Han Solo shoot first?"

    When I touch "No"
    Then I should see "Are there only 3 Indianna Jones films?"

    When I touch "Yes"
    Then I should see "Was Jar Jar Binks character good in Star Wars Episode I"

    When I touch "No"
    Then I should see "Is Mac better than PC?"

    When I touch "Yes"
    Then I should see "Did James Kirk only have one son?"

    When I touch "No"
    Then I should see "6 out of 10 correct"
    And I should see "You are mostly a nerd, mostly."

  Scenario:
    Getting all the answers right

    Given I launch the app
    Then I should see "Is this Bulbasaur?"

    When I touch "Yes"
    Then I should see "Does Steve Ballmer like developers?"

    When I touch "Yes"
    Then I should see "Sonic the Hedgehogs main characters name was Steve"

    When I touch "No"
    Then I should see "Did Optimus Prime rise from the dead?"

    When I touch "Yes"
    Then I should see "Is Coca Cola superior to Pepsi?"

    When I touch "Yes"
    Then I should see "Did Han Solo shoot first?"

    When I touch "Yes"
  
    Then I should see "Are there only 3 Indianna Jones films?"

    When I touch "Yes"
    Then I should see "Was Jar Jar Binks character good in Star Wars Episode I"

    When I touch "No"
    Then I should see "Is Mac better than PC?"

    When I touch "Yes"
    Then I should see "Did James Kirk only have one son?"

    When I touch "No"
    Then I should see "10 out of 10 correct"
    And I should see "You never go full nerd."
