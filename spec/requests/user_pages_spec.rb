require 'spec_helper'

	describe "User Pages" do

		subject { page }

		describe "Signup Page" do
			before { visit '/users/signup' }

			# skipping the have_content for Sign Up because already in a form
			it { should have_selector('title', :text => "Sign Up", :visible => false) }
		end

		# describe "Signup" do

		# 	before { visit '/users/signup' }

		# 	let(:submit) { "Sign Up" }

		# 	describe "with invalid information" do
		# 		it "should not create a user" do
		# 			expect { click_button submit }.not_to change(User, :count)
		# 		end
		# 	end

		# 	describe "with valid information" do
		# 		before do
		# 			fill_in "Name", with: "Example User"
		# 			fill_in "Username", with: "ExampleUser"
		# 			fill_in "Email", with: "user@example.com"
		# 			fill_in "Password", with: "foobar"
		# 			fill_in "Confirmation", with: "foobar"
		# 		end

		# 		it "should create a user" do
		# 			expect { click_button submit }.to change(User, :count).by(1)
		# 		end
		# 	end
		# end
	end
  
