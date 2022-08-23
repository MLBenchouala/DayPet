class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    edit?
  end

  def destroy?
    edit?
  end

  def new?
    edit?
  end

  def index?
    true
  end

  def edit?
    current_user.id == booking.user_id
  end

  def update?
    edit?
  end
end
