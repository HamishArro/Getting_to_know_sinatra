require 'spec_helper.rb'

def sign_in_and_play
visit('/')
fill_in('Player 1', with: 'Hamish')
fill_in('Player 2', with: 'Salar')
click_button 'Submit'
end