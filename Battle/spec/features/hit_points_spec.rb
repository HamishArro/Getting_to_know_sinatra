require_relative 'web_helpers.rb'

feature 'Testing hit points' do

  scenario 'Set player 2 HP to 100' do
    sign_in_and_play
    expect(page).to have_content "Salar's HP: 100"
  end

end
