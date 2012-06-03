require 'spec_helper'

describe "days/new" do
  before(:each) do
    assign(:day, FactoryGirl.build(:day))
  end

  it "renders new day form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => days_path, :method => "post" do
      assert_select "select#day_health_level_id", :name => "day[health_level_id]"
      assert_select "select#day_activity_id", :name => "day[activity_id]"
      assert_select "select#day_mood_id", :name => "day[mood_id]"
    end
  end
end
