class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    mp = Micropost.find(params[:micropost_id])
    current_user.favor(mp)
    redirect_back(fallback_location: root_path)
  end

  def destroy
    mp = Micropost.find(params[:micropost_id])
    current_user.nofavor(mp)
    redirect_back(fallback_location: root_path)
  end
end
