require 'spec_helper'

describe "moods/edit" do
  before(:each) do
    @mood = assign(:mood, stub_model(Mood,
      :name => ""
    ))
  end

  it "renders the edit mood form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moods_path(@mood), :method => "post" do
      assert_select "input#mood_name", :name => "mood[name]"
    end
  end
end
