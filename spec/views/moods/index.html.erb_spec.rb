require 'spec_helper'

describe "moods/index" do
  before(:each) do
    @moods = assign(:moods, [
           FactoryGirl.create(:mood),
           FactoryGirl.create(:mood),
    ])
  end

  it "renders a list of moods" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => @moods.first.name.to_s, :count => 2
  end
end
