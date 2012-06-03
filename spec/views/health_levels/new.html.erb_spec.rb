require 'spec_helper'

describe "health_levels/new" do
  before(:each) do
    assign(:health_level, stub_model(HealthLevel,
      :name => "MyString",
      :level => 1
    ).as_new_record)
  end

  it "renders new health_level form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => health_levels_path, :method => "post" do
      assert_select "input#health_level_name", :name => "health_level[name]"
      assert_select "input#health_level_level", :name => "health_level[level]"
    end
  end
end
