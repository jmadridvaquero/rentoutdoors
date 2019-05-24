class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user_made_a_booking?
  end


  def update?
    user_is_owner?
  end

  def show?
    return true
  end

  def destroy?
    user_is_owner?
  end

  private

  def user_made_a_booking?
    Booking.exists?(equipment: record.equipment, user: user)
  end

  def user_is_owner?
    record.user == user
  end
end
