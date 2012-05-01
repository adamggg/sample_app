
require 'spec_helper'

describe "Static pages" do
  
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :string => 'Sample App')
    end
    
    it "should have title 'Ruby on Rails Tutorial Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('title', :string => "#{:base_title}")
    end
    
  end
  
  describe "Help page" do
    
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :string => 'Help')
    end
    
    it "should have title 'Ruby on Rails Tutorial Sample App | Help'" do
      visit '/static_pages/home'
      page.should have_selector('title', :string => "#{:base_title} | Help")
    end
        
  end
  
  describe "About page" do
    
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :string => 'About Us')
    end
    
    it "should have title 'Ruby on Rails Tutorial Sample App | About Us'" do
      visit '/static_pages/home'
      page.should have_selector('title', :string => "#{:base_title} | About Us")
    end
    
  end
  
  describe "Contact Us" do
    
    it "should have the content 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :string => 'Contact Us')
    end
    
    it "should have title 'Ruby on Rails Tutorial Sample App | Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('title', :string => "#{:base_title} | Contact Us")
    end
  end
  
  
end