class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
