require 'spec_helper'

describe "Bookmarks" do
  describe "GET /bookmarks" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get bookmarks_path
      response.status.should be(200)
    end
  end
  describe "Form" do
  	it "should exist" do
	  visit '/bookmarks/new'
	  expect(page).to have_content("New bookmark")	  
	end
  end
  
end
