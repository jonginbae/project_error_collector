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
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
    else
      req =""
    end
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
      @Like = Like.new

      redirect_to main_path()
    end
  end

  def newrel

  end

  def createrel
      @like = Like.new ({ :user_id => params[:user_id], :error_id => params[:error_id]})
    if @like.save
      flash[:success] = "like_create_success"
      redirect_to main_path()
    else
      flash[:success] = "like_create_success"
      redirect_to main_path()
    end
  end

  def remove 
    like = Like.where(error_id: params[:error_id]).find_by_user_id(params[:user_id])
    like.destroy
    redirect_to main_path
  end

end

private
    def error_params
      params.require(:error).permit(:user_id, :area_id , :title, :language_id , :content , :image)
    end
