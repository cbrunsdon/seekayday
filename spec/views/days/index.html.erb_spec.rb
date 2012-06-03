require 'spec_helper'

describe "days/index" do
  before(:each) do
    @days = assign(:days, [
           FactoryGirl.create(:day),
           FactoryGirl.create(:day)
    ])
  end

  it "renders a list of days" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    @days.each do |x|
      assert_select "tr>td", :text => x.mood.name.to_s, :count => 2
      assert_select "tr>td", :text => x.health_level.name.to_s, :count => 2
      assert_select "tr>td", :text => x.activity.name.to_s, :count => 2
    end
  end
end
