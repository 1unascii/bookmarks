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
      #fill_in "Url", :with=>"foobar"  
    end
  end
  describe "Invalid Url" do
    it "should contain http://" do
      visit '/bookmarks/new'
      fill_in "Url", :with=>"foobar"
      fill_in "Name", :with=>"something"
      click_button "Create Bookmark"
      page.should have_content("Url must be a valid URL")  
    end
  end
  describe "Blank Url" do
    it "should be filled in" do
      visit '/bookmarks/new'
      fill_in "Url", :with=>""
      fill_in "Name", :with=>"something"
      click_button "Create Bookmark"
      page.should have_content("Url can't be blank")  
    end
  end
  describe "Blank Name" do
    it "should be filled in" do
      visit '/bookmarks/new'
      fill_in "Url", :with=>"http://google.com"
      fill_in "Name", :with=>""
      click_button "Create Bookmark"
      page.should have_content("Name can't be blank")  
    end
  end
  describe "Valid Submission" do
    it "should show a success message" do
      visit '/bookmarks/new'
      fill_in "Url", :with=>"http://google.com"
      fill_in "Name", :with=>"something"
      click_button "Create Bookmark"
      page.should have_content("Bookmark was successfully created.")  
    end
  end

end
