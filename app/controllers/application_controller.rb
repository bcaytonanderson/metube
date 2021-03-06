class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @movies = Movie.all
    @shows = Show.all
    @sounds = Sound.all
    @videos = Video.all
  end
end