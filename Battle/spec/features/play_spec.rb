require_relative 'web_helpers.rb'

feature '/play' do
  background { sign_in_and_play }

  feature 'Testing hit points' do

    scenario 'Set player 2 HP to 100' do
      expect(page).to have_content("Salar's HP: 100")
    end


  end

  feature "attack" do

    scenario "can attack!" do
      click_button 'attack!'
      expect(page).to have_content("Salar's HP: 90")
    end

  end

  feature 'turn' do

    scenario 'Player 1 turn when first loaded' do
      expect(page).to have_content("Hamish's turn")
    end

    scenario 'Player 2 turn after player 1 attacks' do
      click_button 'attack!'
      expect(page).to have_content("Salar's turn")
    end

  end

end
