Given /^the following articles exist$/ do |table|
  # table is a Cucumber::Ast::Table
  Article.create table.hashes
end

Then /^the article "(.*?)" should have body "(.*?)"$/ do |tible, body|
  Article.find_by_title(titles).body.shoud eq body
end

