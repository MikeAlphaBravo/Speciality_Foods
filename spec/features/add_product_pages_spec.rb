require 'rails_helper'

describe 'the add a product process' do
  it 'adds a new product' do
    visit '/'
    click_link 'Submit a Product'
    fill_in 'Name', :with => 'Top Notch Stuff Yo'
    fill_in 'Cost', :with => '22.22'
    fill_in 'Origin', :with => 'Anywhere Else'
    click_on 'Create Product'
    expect(page).to have_content 'Product successfully added to inventory!'
  end

  it "gives error when no input is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
