require 'spec_helper'

describe "Activities" do
  describe "GET /activities" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get activities_path
      response.status.should be(403)
    end
  end
end
