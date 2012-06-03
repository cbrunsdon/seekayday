require 'spec_helper'

describe "health_levels/edit" do
  before(:each) do
    @health_level = assign(:health_level, stub_model(HealthLevel,
      :name => "MyString",
      :level => 1
    ))
  end

  it "renders the edit health_level form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => health_levels_path(@health_level), :method => "post" do
      assert_select "input#health_level_name", :name => "health_level[name]"
      assert_select "input#health_level_level", :name => "health_level[level]"
    end
  end
end
