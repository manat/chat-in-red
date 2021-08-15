class MaintenancesController < ApplicationController
  before_action :set_maintenance

  def index
    # render partial: 'show', locals: { maintenance: @maintenance }
    # @maintenance = Maintenance.load
  end

  def update 
    if params[:state] == 'on'
        @maintenance.state = 'off'
    else
        @maintenance.state = 'on'
    end

    @maintenance.save

    # render partial: 'show', locals: { maintenance: @maintenance }
    render 'index'
end

  private

  def set_maintenance
    @maintenance = Maintenance.load
  end
end
