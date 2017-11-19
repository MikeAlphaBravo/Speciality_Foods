require 'rails_helper'

describe "the edit a product process" do
  it "edits a product" do
    visit '/'
    click_link 'Submit a Product'
    fill_in 'Name', :with => 'Top Notch Stuff Yo'
    fill_in 'Cost', :with => '22.22'
    fill_in 'Origin', :with => 'Anywhere Else'
    click_on 'Create Product'
    click_link('Top Notch Stuff Yo',match: :first)
    click_on 'Edit Product'
    fill_in 'Name', :with => 'Not So Top Notch'
    click_on 'Update Product'
    expect(page).to have_content 'Not So Top Notch'
  end

  it "gives error when no description is entered" do
    visit '/'
    click_link 'Submit a Product'
    fill_in 'Name', :with => 'Top Notch Stuff Yo2'
    fill_in 'Cost', :with => '22.22'
    fill_in 'Origin', :with => 'Anywhere Else'
    click_on 'Create Product'
    click_link('Top Notch Stuff Yo2',match: :first)
    click_on 'Edit Product'
    fill_in 'Name', :with => ''
    click_on 'Update Product'
    expect(page).to have_content 'errors'
  end
end
