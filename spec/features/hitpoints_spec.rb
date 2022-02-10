require "capybara/rspec"
require_relative "../../app"

feature 'Player1 can see Players2 hitpoints' do
  scenario 'Submitting hitpoints' do
    visit('/')
    fill_in :player1, with: 'Meg'
    fill_in :player2, with: 'Shirley' 
    click_button 'Submit' 
    #save_and_open_page  #This will save a page in the battle folder which we do not want to commit
    expect(page).to have_content 'Shirley: 60HP' 
  end
end