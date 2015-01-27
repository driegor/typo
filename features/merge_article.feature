Feature: Merge Articles
  As a blog administrator
  In order avoid multiple similar articles
  I want to be able to merge two articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And the following articles exist
    |id	|title		|body			|
    |2	|Prueba		| Esto es una prueba 	|
    |3	|Prueba 2	| Esto es una prueba tb	|

  Scenario: Successfully just merge articles
    Given I am on the article page for "Prueba"
    And show me the page
    And I fill in "merge_with" with "3"
    And I press "Merge"
    Then the article "Prueba" should have body "Prueba Prueba 2"
    And show me the page
