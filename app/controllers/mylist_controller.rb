class MylistController < ApplicationController
  def index
    @errors = Error.find_by_user_id(@current_user.id)
    if Like.find_by_user_id(@current_user.id).present?
      @likes_errors = Error.find_by_id(Like.find_by_user_id(@current_user.id).error_id)
    else
      @likes_errors = nil
    end
  end
end
