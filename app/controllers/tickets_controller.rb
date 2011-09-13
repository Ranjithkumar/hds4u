class TicketsController < ApplicationController
  
  respond_to :html, :xml, :except=> [:new, :create]
  before_filter :tickets, :only => [:index]
  
  def new
  end
  
  def create
    redirect_to tickets_path
  end
  
  def index
    respond_with @tickets
  end
  
  private
  
  def tickets
    @tickets = Ticket.all
  end
  
end
