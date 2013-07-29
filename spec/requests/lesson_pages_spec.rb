require 'spec_helper'

describe "Lesson pages" do

	subject { page }

	describe "Show page" do
		it "should have navigation present"
			# describe "Navigation should be available" do
   #  			it "should show the navigation on the home page" do
   #    			visit root_path
   #    			page.should have_link('')
   #  			end
  			# end
		it "should have a title displaying lesson name"

		describe "Exercises Container" do
			
			describe "Header" do
				it "should have a header displaying lesson name"

				describe "Play all button" do
					it "should be present and clickable if 'pause all' button is being displayed"

					describe "if clicked" do
						it "should play all audio files in sequence"
						it "should change to 'pause all' button"
					end
				end

				describe "Pause all button" do
					it "should be hidden unless 'play all' button is clicked"

					describe "if clicked" do
						it "should pause current audio file playing"
						it "should change to 'play all' button"
					end
				end

				describe "Download all button" do
					it "should be present and clickable at all times"

					describe "if clicked" do
						it "should download all audio files"
						it "should mark all exercises as played"
					end
				end

			end

			describe "Minilesson" do
				it "should have a number representing its id in the lesson"
				it "should display phrase in native language"
				it "should display phrase in foreign language"

				describe "Container border color" do
					it "should be plain if test has not been taken"
					it "should be green if the user passed that section of the test"
					it "should be red if the user failed that section of the test"
				end

				describe "Play button" do
					it "should be hidden if not being hovered over, audio file is not paused, 
						or exercise is locked"
					it "should be present if hovered over, nothing else playing, and unlocked"
					
					describe "if clicked" do
						it "should play the audio file"
						it "should change to a pause button"
					end
				end

				describe "Pause button" do
					it "should be hidden if not being hovered over, audio file is not playing, 
						or exercise is locked"
					it "should be present only if an audio file is playing"

					describe "if clicked" do
						it "should pause the audio file"
						it "should change to a play button"
					end
				end

				describe "Download button" do
					it "should be hidden if not being hovered over, audio file is not playing, 
						or exercise is locked"
					it "should be present only if being hovered over, audio file is playing, 
						or exercise is unlocked"

					describe "if clicked" do
						it "should download the audio file to the user's computer"
					end
				end
			end

			describe "Test button" do
				it "should be clickable only if all exercises have been completed"

				describe "is clicked when unlocked" do
					it "should run the testing program"
				end
			end
		end
	end
end



  
