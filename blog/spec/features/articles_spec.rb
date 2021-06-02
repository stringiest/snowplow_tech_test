# frozen_string_literal: true

require 'rails_helper'
feature 'articles' do
  scenario 'user can make an article' do
    visit('/articles')
    click_link('New Article')

    fill_in('article_title', with: '2021 prediction')
    fill_in('article_body', with: 'This will be a good year')

    click_button('Create Article')

    expect(current_path).to eq('/articles')
    expect(page).to have_content('2021 prediction')
  end

  scenario 'user can edit an article' do
    visit('/articles')
    click_link('New Article')

    fill_in('article_title', with: '2021 prediction')
    fill_in('article_body', with: 'This will be a good year')

    click_button('Create Article')

    click_link('2021 prediction')
    click_link('Edit')
    fill_in('article_title', with: '')
    fill_in('article_title', with: '2022 prediction')

    click_button('Update Article')

    expect(current_path).to eq('/articles')
    expect(page).to have_content('2022 prediction')
  end

  # scenario 'user can delete an article' do
  #     visit('/articles')
  #     click_link('New Article')

  #     fill_in('article_title', with: '2021 prediction')
  #     fill_in('article_body', with: 'This will be a good year')

  #     click_button('Create Article')

  #     click_link('2021 prediction')
  #     click_link('Destroy')
  #     click_link('ok')

  #     expect(current_path).to eq('/articles')
  #     expect(page).not_to have_content('2021 prediction')
  # end
end
