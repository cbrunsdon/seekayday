require 'spec_helper'

describe "activities/show" do
  before(:each) do
    @activity = assign(:activity, FactoryGirl.create(:activity))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/#{@activity.name}/)
    rendered.should match(/#{@activity.benefit_level}/)
  end
end
