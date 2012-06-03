require 'spec_helper'

describe "days/show" do
  before(:each) do
    @day = assign( :day, FactoryGirl.create(:day) )
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/#{@day.activity.name}/)
    rendered.should match(/#{@day.mood.name}/)
    rendered.should match(/#{@day.health_level.name}/)
  end
end
