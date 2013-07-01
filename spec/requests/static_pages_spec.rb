require 'spec_helper'

describe "StaticPages" do

	subject { page }

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

		before { visit root_path }
		
			it { should have_selector('h1', :text => "Urop App") }
			it { should have_selector('title', :text => "Home", :visible => false) }
	end

	describe "Help page" do

		before { visit help_path }
		
			it { should have_selector('h1', :text => "Help") }
			it { should have_selector('title', :text => "Help", :visible => false) }
	end

	describe "About us page" do
		
		before { visit about_path }

			it { should have_selector('h1', :text => "About Us") }
			it { should have_selector('title', :text => "About Us", :visible => false) }
	end

	describe "Contact page" do

		before { visit contact_path }

			it { should have_selector('h1', :text => "Contact Us") }
			it { should have_selector('title', :text => "Contact Us", :visible => false) }
	end

	describe "Sign in page" do

		before { visit signin_path }

			it { should have_selector('h1', :text => "Sign In") }
			it { should have_selector('title', :text => "Sign In", :visible => false) }
	end
end
