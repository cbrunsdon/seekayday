authorization do
  role :user do
    has_permission_on :activities, :to => [:manage]
    has_permission_on :moods, :to => [:manage]
    has_permission_on :days, :to => [:manage]
    has_permission_on :health_levels, :to => [:manage]
  end
end
privileges do
  privilege :manage do
    includes :create, :read, :update, :delete, :index, :destroy
  end
end
