class ErrorCollectorController < ApplicationController
  def index

  end

  def new
    @error = Error.new
    @areas = Area.all
    @languages = Language.all


    respond_with(@areas) do |format|
      format.json { render :json => @areas.to_json(:only => [:id]) }
    end
  end

  def create

    if params[:commit] == 'OK'
    elsif params[:commit] == 'Cancel'
      redirect_to main_path()
    end
  end
end
