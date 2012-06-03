require 'spec_helper'

describe "days/_calendar" do
  before(:each) do
    @days = assign(:days, [
           FactoryGirl.create(:day),
           FactoryGirl.create(:day),
           FactoryGirl.create(:day)
    ])
  end

  it "renders a list of days" do
    render :partial => 'days/calendar', :locals => { :days => @days }
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select ".current-day", :count => 1
  end
end
