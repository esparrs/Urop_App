require 'spec_helper'

describe "Exam Pages" do

  subject { page }

  describe "new exam page" do
  	# This might be very very wrong
  	before { visit exams }

  	# Not working right now - but fuck it. It's really not worth it at this point.
  	it { should have_selector('h1', text: 'Create A New exam') }
  end
end
