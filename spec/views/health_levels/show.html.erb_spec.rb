require 'spec_helper'

describe "health_levels/show" do
  before(:each) do
    @health_level = assign(:health_level, stub_model(HealthLevel,
      :name => "Name",
      :level => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
