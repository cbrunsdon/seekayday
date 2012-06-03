class User < ActiveRecord::Base
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable, :registerable, :omniauthable


  attr_accessible :email, :password, :password_confirmation, :remember_me

  def role_symbols
    [:user]
  end


  # used for unapproved devise users
  def active_for_authentication?
    super && approved?
  end

  # used for unapproved devise users
  def inactive_message
    if !approved?
      :not_approved
    else
      super # Use whatever other message
    end
  end

  # uesd for openid devise/omniauths callbacks
  def self.find_for_open_id(access_token, signed_in_resource=nil)
    data = access_token.info
    if user = User.where(:email => data["email"]).first
      user
    else
      User.create!(:email => data["email"], :password => Devise.friendly_token[0,20])
    end
  end

end
