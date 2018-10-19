feature 'Testing the attacks' do
  let(:game) {double :game}

  scenario 'Player 1 Attacks Player 2 and reduces HP by 10' do
    srand 0
    sign_in_and_play
    click_link 'Attack'
    expect(page).not_to have_content 'Tom: 60HP'
    expect(page).to have_content 'Tom: 50HP'
    expect(page).to have_content 'Sundar: 60HP'
  end
end
feature 'determine winner and loser' do
  scenario 'Player 1 loses first with HP equal to zero' do
    run_eleven_times
    expect(page).to have_content 'Tom: 0HP'
  end
  scenario 'prints lose/win message' do
    run_eleven_times
    #sign_in_and_play
    expect(page).to have_content 'Tom lost'
  end
end
