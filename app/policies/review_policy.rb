class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

  def new?
    return true
  end

  def update?
    user_is_booker?
    # - record: the restaurant passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def destroy?
    user_is_booker?
  end

  def edit?
    user_is_booker?
  end

  private

  def user_is_booker?
    record.user == user
  end
end
