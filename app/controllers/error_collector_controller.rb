class ErrorCollectorController < ApplicationController
  def index
    @errors = Error.all
  end

  def new
    @error = Error.new
    @areas = Area.all
    @languages = Language.all
  end

  def create
    req = Cloudinary::Uploader.upload(params[:file])
    @error = Error.new error_params
    @error.image = req["public_id"]
    if params[:commit] == 'OK'
      if @error.save
        @error.update(:user_id => @current_user.id)
        flash[:success] = "user_create_success"
        redirect_to main_path()
      else
        flash[:error] = "user_create_success"
        render :new
      end
    elsif params[:commit] == 'Cancel'
      redirect_to main_path()
    end
  end
end

private
    def error_params
      params.require(:error).permit(:user_id, :area_id , :language_id , :content , :image)
    end
