# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    can :read, Course

    return unless user.present?

    can :manage, CourseRegistration, user: user

    return unless user.admin?

    can :manage, :all
  end
end
