require 'spec_helper'

describe "StaticPages" do

	subject { page }

	shared_examples_for "all static pages" do
		it { should have_content(heading) }
		it { should have_selector('title', :text => title, :visible => false) }
	end

	shared_examples_for "all clicked links" do
		it { should have_selector('title', :text => title, :visible => false) }
	end

	describe "Home page" do

		before { visit root_path }
		
		let(:heading) { 'Urop App' }
		let(:title) { 'Home' }

		it_should_behave_like "all static pages"
	end

	describe "Help page" do

		before { visit help_path }
	
		let(:heading) { 'Help' }
		let(:title) { 'Help' }

		it_should_behave_like "all static pages"
	end

	describe "About us page" do
		
		before { visit about_path }

		let(:heading) { 'About Us' }
		let(:title) { 'About Us' }

		it_should_behave_like "all static pages"
	end

	describe "Contact page" do

		before { visit contact_path }

		let(:heading) { 'Contact Us' }
		let(:title) { 'Contact Us' }

		it_should_behave_like "all static pages"
	end

	it "should have the right links on the layout" do
		
		visit root_path

	    click_link "About"
	    expect(page).to have_selector('title', :text => "About Us", :visible => false)
	    click_link "Help"
	    expect(page).to have_selector('title', :text => "Help", :visible => false)
	    click_link "Contact"
	    expect(page).to have_selector('title', :text => "Contact Us", :visible => false)
	    click_link "Home"
	    expect(page).to have_selector('title', :text => "Home", :visible => false)
	    click_link "Urop App"
	    expect(page).to have_selector('title', :text => "Home", :visible => false)
	    # click_link "Settings"
	    #expect(page).to have_selector('title', :text => "#", :visible => false)
	    # click_link "Learn"
	    #expect(page).to have_selector('title', :text => "#", :visible => false)
	    # click_link "Help Us"
	    #expect(page).to have_selector('title', :text => "#", :visible => false)

  	end
end
