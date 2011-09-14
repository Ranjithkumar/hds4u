class GroupsController < ApplicationController
  respond_to :html, :xml
  before_filter :groups, :only=> [:index, :new]
  before_filter :group, :only => [:edit, :update, :destroy]
  
  def index
    @groups = Group.paginate(:per_page => 20, :page => params[:page])
    respond_with @groups
  end
  
  def new
    @group = Group.new
    respond_with @group
  end
  
  def create
    @group = Group.new(params[:group])
    respond_to do |format|  
      if @group.save
        format.html { redirect_to(groups_url, :notice => I18n.t('views.create_success_message', :type=>@group.class))}
      else
        format.html { render :action => "new"}
      end
    end
  end
  
  def edit
  end
  
  def update
    respond_to do |format|
      if @group.update_attributes(params[:group])
        format.html { redirect_to(groups_url, :notice => I18n.t('views.update_success_message', :type=>@group.class))}
      else
        format.html { render :action => "edit"}
      end
    end
  end
  
  def destroy
    @group.destroy
    redirect_to user_url
  end
  
  private
  
  def groups
    @groups = Group.all
  end
  
  def group
    @group = Group.find(params[:id])
  end
  
end
