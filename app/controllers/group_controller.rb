class GroupController < ApplicationController
  before_filter :authenticate_security_profile!

  def show
    @group = current_security_profile.group
    render :index
  end
end
