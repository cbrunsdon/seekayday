require 'spec_helper'

describe "activities/index" do
  before(:each) do
    @activities = assign(:activities, [
      FactoryGirl.create(:activity),
      FactoryGirl.create(:activity)
    ])
  end

  it "renders a list of activities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => @activities.first.name, :count => 2
    assert_select "tr>td", :text => @activities.first.benefit_level, :count => 2
  end
end
