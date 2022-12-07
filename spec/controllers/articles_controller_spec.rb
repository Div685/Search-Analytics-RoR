require 'capybara/rspec'
require 'rails_helper'

RSpec.describe ArticleController, type: :feature do
  before(:each) do |i|
    50.times do
      Article.create(
        title: "title#{i}",
        description: Faker::Quote.matz
      )
    end
  end

  it 'should have correct path' do
    visit root_path
    expect(page).to have_current_path('/')
  end

  it 'should have a description' do
    visit '/'
    expect(page).to have_content('description')
  end
end
