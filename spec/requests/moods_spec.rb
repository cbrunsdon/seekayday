require 'spec_helper'

describe "Moods" do
  describe "GET /moods" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get moods_path
      response.status.should be(403)
    end
  end
end
