class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  
  def create
  end
  
  def destory
  end
end
