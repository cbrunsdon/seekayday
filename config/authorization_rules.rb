authorization do
  role :user do
    includes :guest
    has_permission_on :activities, :to => [:manage]
    has_permission_on :moods, :to => [:manage]
    has_permission_on :days, :to => [:manage]
    has_permission_on :health_levels, :to => [:manage]
  end
  role :guest do
    has_permission_on :days, :to => [:current]
  end

end
privileges do
  privilege :manage do
    includes :create, :read, :update, :delete, :index, :destroy, :new, :show, :edit
  end
end
