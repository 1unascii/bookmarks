require 'spec_helper'

describe "bookmarks/index" do
  before(:each) do
    assign(:bookmarks, [
      stub_model(Bookmark,
        :url => "Url",
        :name => "Name"
      ),
      stub_model(Bookmark,
        :url => "Url",
        :name => "Name"
      )
    ])
  end

  it "renders a list of bookmarks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td>a", "Name".to_s 
    #Really can't figure out how to test the href attribute value
    #should have_xpath("//a[@href = " + "Url".to_s + "]")
    #find('a')["href=" + "Url".to_s].should be_visible
    #page.should have_link("Name".to_s, :href => "Url".to_s)
    #assert_select "tr>td", :text => "Name".to_s, :count => 2//why is the count there? what is it counting? I know there are more than two of these.
  end
end
