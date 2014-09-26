require 'spec_helper'
describe "Static pages" do
 
 describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
	  expect(page).to have_content('Sample App')
    end
	it "should have the right title" do
	visit '/static_pages/home'
	expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
	end
  end

describe "Help page" do
  it "should have the content 'Help'" do
  visit '/static_pages/help'
  expect(page).to have_content('Help')
  end
  it "should have the right title" do
	visit '/static_pages/help'
	expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
	end
  #Notice that, in the above code, each PAGE belongs to a large group
  #-in this case, "Help page" and "Home page" belong to Static pages- 
  #and so, you have to set the location of their visit to "static_pages/home"
  #and "static_pages/help", respectively.  
end

describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
	it "should have the right title" do
	visit '/static_pages/about'
	expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
	end
  end
 end