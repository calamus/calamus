class GroupController < ApplicationController
  before_filter :authenticate_security_profile!

  def show
    render :index
  end
end
