feature 'Testing the attacks' do
  scenario 'Player 1 Attacks Player 2 and reduces HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).not_to have_content 'Tom: 60HP'
    expect(page).to have_content 'Tom: 50HP'    
  end
end
