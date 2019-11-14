class TinyHousePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def create?
    return true
  end

  def update?
    record.owner == user
  end

  def destroy?
    record.owner == user
  end
end
