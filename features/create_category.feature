Feature: Create Category
  As a blog administrator
  In order to enhance even more this awesome blog
  I want to create a category

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create categories
    Given I am on the new category page
    When I fill in "category_name" with "Category name"
    And I fill in "category_keywords" with "Category keywords"
    And I press "Save"
    Then I should be on the new category page
    
   
