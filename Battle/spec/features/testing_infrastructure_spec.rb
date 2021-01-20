feature 'Testing infastructure' do

  scenario 'players can input their names' do
    visit('/')
    fill_in('Player 1', with: 'Hamish')
    fill_in('Player 2', with: 'Salar')
    click_button 'Submit'
    expect(page).to have_content 'Hamish vs. Salar'
  end

  scenario 'players can input their names' do
    visit('/')
    fill_in('Player 1', with: 'Hamish')
    fill_in('Player 2', with: 'Salar')
    click_button 'Submit'
    expect(page).to have_content "Salar's HP: 100"
  end

end
