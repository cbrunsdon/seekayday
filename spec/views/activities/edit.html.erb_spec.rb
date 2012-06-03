require 'spec_helper'

describe "activities/edit" do
  before(:each) do
    @activity = assign(:activity, stub_model(Activity,
      :name => "MyString",
      :benefit_level => ""
    ))
  end

  it "renders the edit activity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => activities_path(@activity), :method => "post" do
      assert_select "input#activity_name", :name => "activity[name]"
      assert_select "input#activity_benefit_level", :name => "activity[benefit_level]"
    end
  end
end
