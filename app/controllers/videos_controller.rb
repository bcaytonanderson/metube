class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(Video_params)
    if @video.save
      redirect_to "/videos/#{@video.id}"
    else
      render 'new'
    end
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    @video = Video.find(params[:id])
    @video.update(Video_params)
    redirect_to '/videos/#{@video.id}'
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    redirect_to root_path
  end

  def show
    @video= Video.find(params["id"])
    @all = Video.all
  end


private

  def video_params
    # we must explicitly permit the parameters we will allow
    params.require(:video).permit(:title, :youtube_id, :description) 
  end
end