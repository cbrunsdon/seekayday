require 'spec_helper'

describe "Days" do
  describe "GET /days" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get days_path
      response.status.should be(403)
    end
  end
end
