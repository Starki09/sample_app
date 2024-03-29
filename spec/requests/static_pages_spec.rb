require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    it "should have some content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "| Home")  
    end  
  end

  describe "Help page" do
    it "should have some content 'Help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "| Help")  
    end 
  end

  describe "About page" do
    it "should have some content 'About Us'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "| About Us")  
    end 
  end
end
