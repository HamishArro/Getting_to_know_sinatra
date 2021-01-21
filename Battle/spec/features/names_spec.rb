require_relative 'web_helpers.rb'

feature 'Inputting names' do

  scenario 'players can input their names' do
   #Inside testing_information
    sign_in_and_play
    expect(page).to have_content 'Hamish vs. Salar'
  end

end
