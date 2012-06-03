require 'spec_helper'

describe "HealthLevels" do
  describe "GET /health_levels" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get health_levels_path
      response.status.should be(403)
    end
  end
end
