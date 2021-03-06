Feature: Create Categories
  As an admin
  In order to give structure to the blog
  I want to create a category

  Background: 
    Given the blog is set up 
    And I am logged into the admin panel
    
    
  Scenario: View create category page 
    When I go to the Categories page
    Then I should see "Categories"
    And I should see "Title"
    And I should see "Description"
    And I should see "Permalink"
    And I should see "Keywords"
    
  Scenario: Create Category
    When I go to the Categories page
    And I fill in the following:
        | category_name         | TestName          |
        | category_keywords     | TestKeyword       |
        | category_description  | TestDescription   |
        | category_permalink    | TestPermalink     |
    And I press "Save"
    Then I should see "TestName"
    And I should see "TestKeyword"
    And I should see "TestDescription"
    And I should see "TestPermalink"