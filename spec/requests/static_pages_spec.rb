require 'spec_helper'

describe "StaticPages" do


	describe "Signin page" do

		it "should have the h1 'Sign In'" do
			visit '/static_pages/signin'
			page.should have_selector('h1', :text => "Sign In")
		end

		it "should have the right title" do
			visit '/static_pages/signin'
			page.should have_selector('title', :text => "Sign In", :visible => false)
		end
	end

	describe "Home page" do
		
		it "should have the h1 'Urop App'" do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => "Urop App")
		end

		# Capybara 2.0 is failing at detecting hidden text such as titles, must set :visible => false
		it "should have the right title" do	
			visit '/static_pages/home'
			page.should have_selector('title', :text => "Home", :visible => false)
		end
	end

	describe "Help page" do
		
		it "should have the h1 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('h1', :text => "Help")
		end

		# Capybara 2.0 is failing at detecting hidden text such as titles, must set :visible => false
		it "should have the right title" do	
			visit '/static_pages/help'
			page.should have_selector('title', :text => "Help", :visible => false)
		end
	end

	describe "About us page" do
		
		it "should have the h1 'About Us'" do
			visit '/static_pages/about'
			page.should have_selector('h1', :text => "About Us")
		end

		# Capybara 2.0 is failing at detecting hidden text such as titles, must set :visible => false
		it "should have the right title" do	
			visit '/static_pages/about'
			page.should have_selector('title', :text => "About Us", :visible => false)
		end
	end

	describe "Contact page" do

		it "should have the h1 'Contact Us" do
			visit '/static_pages/contact'
			page.should have_selector('h1', :text => "Contact Us")
		end

		it "should have the right title" do
			visit '/static_pages/contact'
			page.should have_selector('title', :text => "Contact Us", :visible => false)
		end
	end
end
