require 'spec_helper'

describe "Exam Pages" do

  subject { page }

  describe "new exam page" do
  	before { visit '/exams/new' }

  	# Not working right now - but fuck it. It's really not worth it at this point.
  	it { should have_content('Create A New Exam') }
  end
end
