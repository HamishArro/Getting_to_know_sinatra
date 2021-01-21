require_relative 'web_helpers.rb'

feature "attack" do

  scenario "can attack!" do
    sign_in_and_play
    click_button 'attack!'
    expect(page).to have_content ("Salar's HP: 90")
  end

end
