class GroupsController < ApplicationController
  respond_to :html, :xml
  before_filter :groups, :only=> [:index]
  
  def index
    respond_with @groups
  end
  
  def new
  end
  
  def create
  end
  
  def update
  end
  
  def destroy
  end
  
  private
  
  def groups
    @groups = Group.all
  end
  
end
