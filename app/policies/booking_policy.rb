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
    true
  end

  def new?
    true
  end

  def index?
    true
  end

  def accept?
    true
  end

  def decline?
    true
  end
end
