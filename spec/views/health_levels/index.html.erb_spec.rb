require 'spec_helper'

describe "health_levels/index" do
  before(:each) do
    @health_levels = assign(:health_levels, [
           FactoryGirl.create(:health_level),
           FactoryGirl.create(:health_level)
    ])
  end

  it "renders a list of health_levels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    @health_levels.each do |x|
      assert_select "tr>td", :text => x.name.to_s
      assert_select "tr>td", :text => x.level.to_s
    end
  end
end
