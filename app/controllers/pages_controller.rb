class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]

  def home
  end

  def dashboard
    @user = current_user.name
  end

  def contact
  end
end
