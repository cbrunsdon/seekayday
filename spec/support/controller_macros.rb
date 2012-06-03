#taken from the devise wiki
module ControllerMacros
  def login_user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      user = FactoryGirl.create(:user)
      controller.stub :current_user => user

      sign_in user
    end
  end
end
