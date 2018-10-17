feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end

  scenario 'Page fill in' do
    sign_in_and_play
    expect(page).to have_content 'Sundar vs Tom'
  end
end

feature '# Player 2' do
  scenario 'checking hit score' do
    sign_in_and_play
    expect(page).to have_content 'Tom: 60HP'
  end
  scenario 'Attack Player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Sundar attacked Tom'
  end

feature '# Switch sides' do
  scenario 'Check initial player' do
    sign_in_and_play
    expect(page).to have_content "Sundar's turn"
  end

  scenario 'Change players' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'Swap'
    expect(page).to have_content "Tom's turn"
    expect(page).not_to have_content "Sundar's turn"
  end

end

end
