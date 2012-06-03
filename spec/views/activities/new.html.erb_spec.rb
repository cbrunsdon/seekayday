require 'spec_helper'

describe "activities/new" do
  before(:each) do
    assign(:activity, FactoryGirl.build(:activity))
  end

  it "renders new activity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => activities_path, :method => "post" do
      assert_select "input#activity_name", :name => "activity[name]"
      assert_select "input#activity_benefit_level", :name => "activity[benefit_level]"
    end
  end
end
