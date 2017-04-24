require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

set(:show_exceptions, false)
describe('the triangle test', {:type => :feature}) do
  it ('tells if triangle, and what triangle type') do
    visit('/')
    fill_in('side-1', :with => '2')
    fill_in('side-2', :with => '2')
    fill_in('side-3', :with => '3')
    click_button('Click')
    expect(page).to have_content('isosceles'.capitalize)
  end
end
