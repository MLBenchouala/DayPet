class RatingPolicy < ApplicationPolicy
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

  def destroy?
    edit?
  end

  def new?
    true
  end

  def index?
    true
  end

  def edit?
    current_user.id == rating.user_id
  end

  def update?
    edit?
  end
end
