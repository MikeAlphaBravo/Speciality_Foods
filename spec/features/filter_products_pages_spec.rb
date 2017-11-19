require 'rails_helper'

describe "filter products by origin" do
  it "filter by USA" do
    visit '/'
    click_link 'Submit a Product'
    fill_in 'Name', :with => 'Top Notch Stuff Yo'
    fill_in 'Cost', :with => '22.22'
    fill_in 'Origin', :with => 'United States Of America'
    click_on 'Create Product'

    click_link 'Submit a Product'
    fill_in 'Name', :with => 'Top Notch Stuff Yo2'
    fill_in 'Cost', :with => '22.22'
    fill_in 'Origin', :with => 'Not USA'
    click_on 'Create Product'

    click_on 'USA'
    expect(page).to have_content 'Top Notch Stuff Yo'
  end
end
