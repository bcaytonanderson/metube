class SoundsController < ApplicationController
  def index
    @sounds = Sound.all
  end

  def new
    @sound = Sound.new
  end

  def create
    @sound = Sound.new(sound_params)
    if @sound.save
      redirect_to "/sounds/#{@sound.id}"
    else
      render 'new'
    end
  end

  def edit
    @sound = Sound.find(params[:id])
  end

  def update
    @sound = Sound.find(params[:id])
    @sound.update(sound_params)
    redirect_to '/sounds/#{@sound.id}'
  end

  def destroy
    @sound = Sound.find(params[:id])
    @sound.destroy
    redirect_to root_path
  end

  def show
    @sound= Sound.find(params["id"])
    @all = Sound.all
  end


private

  def sound_params
    # we must explicitly permit the parameters we will allow
    params.require(:sound).permit(:title, :soundcloud_url) 
  end
end
