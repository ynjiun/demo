require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit root_path
      page.should have_content('Sample App')
    end
  end
  
  describe "Help page" do
    it "should have the content 'Help'" do
      visit help_path
      page.should have_content('Help')
    end
  end
    
  describe "About page" do
  
    it "should have the content 'About Us'" do
      visit about_path
      page.should have_content('About Us')
    end
  end
  
  describe "Contact page" do
  
      it "should have the h1 'Contact'" do
        visit contact_path
        page.should have_css('h1', :text => 'Contact')
      end
  
      it "should have the title 'Contact'" do 
        visit contact_path
        page.should have_content("Ruby on Rails Tutorial")
        page.should have_selector("title", :content => full_title('Contact'))
       
        #page.should have_selector("title", :text => "Ruby on Rails Tutorial Sample App | Contact")
        #page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | Contact')
      end
    end
    
end
