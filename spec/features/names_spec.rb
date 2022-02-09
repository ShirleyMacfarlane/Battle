require "capybara/rspec"
require_relative "../../app"

feature 'Testing the player enters names on a form' do
  scenario 'Submitting names' do
    visit('/')
    fill_in :player1, with: 'Meg'
    fill_in :player2, with: 'Shirley'
    click_button 'Submit' 
    #save_and_open_page  #This will save a page in the battle folder which we do not wqant to commit
    expect(page).to have_content 'Meg vs. Shirley' 
  end
end