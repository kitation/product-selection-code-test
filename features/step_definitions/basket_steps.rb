When(/^I select some channels$/) do
    @news = FactoryGirl.create(:product, :news)
    @liverpool_sports = FactoryGirl.create_list(:product, 2, :sports, :liverpool)
    @london_sports = FactoryGirl.create_list(:product, 2, :sports, :london)
    visit '/'
    page.save_screenshot
    check @news.id
    check @liverpool_sports.first.id

    find('.col-3').should have_content(@news.name)
end

When(/^checkout my basket$/) do
  click_button 'Checkout'
end

Then(/^I should see the confirmation page$/) do
  expect(page).to have_content("You are customer 2")
  find('#product-list').should have_content(@news.name)
end