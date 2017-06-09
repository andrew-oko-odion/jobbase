class EmployerAbility
  include CanCan::Ability
  
  def initialize(employer)
    can :manage, Application
    can :read, Job
  end
end
