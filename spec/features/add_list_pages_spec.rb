require 'rails_helper'

describe "the add a list process" do
  it "adds a new list" do
    visit lists_path
    click_on 'Add a list'
    fill_in 'Name', :with => 'Homework'
    click_on 'Create List'
    expect(page).to have_content 'Lists'
  end

  it "displays error message when no name is added" do
    visit new_list_path
    click_on 'Create List'
    expect(page).to have_content 'errors'
  end
end
