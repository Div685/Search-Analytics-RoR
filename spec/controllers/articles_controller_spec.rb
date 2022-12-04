require 'capybara/rspec'
require 'rails_helper'

RSpec.describe ArticlesController, type: :feature do
  before(:each) do |i|
    50.times do
      Article.create(
        title: "title#{i}",
        description: Faker::Quote.matz(sentence_count: 10)
      )
    end
  end

  it 'should have a title' do
    visit '/'
    expect(page).to have_content('title')
  end

  it 'should have a description' do
    visit '/'
    expect(page).to have_content('body')
  end
end
