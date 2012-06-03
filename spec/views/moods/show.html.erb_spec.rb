require 'spec_helper'

describe "moods/show" do
  before(:each) do
    @mood = assign(:mood, stub_model(Mood,
      :name => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
