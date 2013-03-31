require 'spec_helper'

describe "Home page" do
  it "It should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_content('Sample App')
  end
end

describe "Help Page" do
  it "it should have the content 'help'" do
    visit '/static_pages/help'
    page.should have_content('help')
  end
end

describe "about page" do
  it "it should have the content 'about'" do
  	visit '/static_pages/about'
  	page.should have_content('about')
  end
end

describe "Dynamically Change Title" do
  it "it should have the right title" do
  	visit '/static_pages/home'
  	page.should have_selector('title'
  		, :text => "Lowenstein | Home")
  end
end