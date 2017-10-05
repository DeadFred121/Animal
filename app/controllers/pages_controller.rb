class PagesController < ApplicationController

  def profile
    @user = current_user
    if params[:role]
      @users = User.with_any_role(params[:role].to_sym)
    else
      @users = User.all
    end
  end

end
