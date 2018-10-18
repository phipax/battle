def sign_in_and_play
  visit('/')
  fill_in 'player_1', with: "Sundar"
  fill_in 'player_2', with: "Tom"
  click_button 'Submit'
end

def run_eleven_times
  sign_in_and_play
  10.times do
    click_link 'Attack'
    click_link 'Swap'
  end
  click_link 'Attack'
end
