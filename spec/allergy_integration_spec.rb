require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('allergy score user path', {:type => :feature}) do
  it('processes the user entry and returns allergy score results') do
  visit('/')
  fill_in('allergy_score', :with => '256')
  click_button('Send')
  expect(page).to have_content("Don't eat or breath, you have issues that include: cats, pollen, chocolate, tomatoes, strawberries, shellfish, peanuts, eggs")
end
end
