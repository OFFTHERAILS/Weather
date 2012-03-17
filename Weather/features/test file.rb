#test function cuncumber 
Feature:user creates Record
   scenario: User adds a new record
   Given I go to the new record page
   And I fill in "Date" with "08/03/2012"
   And I fill in "Day" with "Monday"
   And I fill in "Time" with "12:00"
   And I fill in "Temperature" with "17"
   And I fill in "Precipitation" with "15"
   And I fill in "AirPressure" with "1024"
   And I fill in "WindSpeed" with "11"
   And I fill in "WindDirection " with "NW"
   When I press "Create Record"
   Then I should be on the all record page
   And I should see"08/03/2012" 