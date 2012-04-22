authorization do
  role :admin do
    includes :member
    has_permission_on :users, :to => :manage
    has_permission_on :games, :to => :manage
    has_permission_on :roles, :to => :manage
  end
  
  role :member do
    includes :guest
    has_permission_on :games, :to => :manage
    has_permission_on :users, :to => :update do
      if_attribute :user => is { user }
    end
  end
  
  role :guest do
    has_permission_on :users, :to => :index
    has_permission_on :users, :to => :create
    has_permission_on :user_sessions, :to => :create
  end
  
end

privileges do
  privilege :manage, :includes => [:create, :read, :update, :delete]
  privilege :read, :includes => [:index, :show]
  privilege :create, :includes => :new
  privilege :update, :includes => :edit
  privilege :delete, :includes => :destroy
end