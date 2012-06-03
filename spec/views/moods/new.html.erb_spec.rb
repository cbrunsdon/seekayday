require 'spec_helper'

describe "moods/new" do
  before(:each) do
    assign(:mood, stub_model(Mood,
      :name => ""
    ).as_new_record)
  end

  it "renders new mood form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moods_path, :method => "post" do
      assert_select "input#mood_name", :name => "mood[name]"
    end
  end
end
