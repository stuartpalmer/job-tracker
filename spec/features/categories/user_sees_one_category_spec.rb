require 'rails_helper'

describe "User sees one category" do
  scenario "a user sees a category" do
    category = Category.create(title: "First Category")
    category2 = Category.create(title: "Second Category")

    visit category_path(category)

    expect(current_path).to eq("/categories/#{category.id}")
    expect(page).to have_content("First Category")
  end
end
