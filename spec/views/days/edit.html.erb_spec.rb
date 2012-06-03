require 'spec_helper'

describe "days/edit" do
  before(:each) do
    @day = assign(:day, stub_model(Day,
      :health_level_id => 1,
      :activity_id => 1,
      :mood_id => 1
    ))
  end

  it "renders the edit day form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => days_path(@day), :method => "post" do
      assert_select "select#day_health_level_id", :name => "day[health_level_id]"
      assert_select "select#day_activity_id", :name => "day[activity_id]"
      assert_select "select#day_mood_id", :name => "day[mood_id]"
    end
  end
end
