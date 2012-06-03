require 'spec_helper'

describe GeneralController do
  describe "GET index" do
    it 'can renders the index' do
      get :index
    end
  end
end
