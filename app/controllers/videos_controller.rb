class VideosController < ApplicationController
  before_action :set_video, only: [:show, :edit, :update, :destroy]
  before_action :signed_in_user, only: [:new, :edit, :update, :create, :destroy]

  # GET /videos
  # GET /videos.json
  def index
    @videos = Video.all
  end

  # GET /videos/1
  # GET /videos/1.json
  def show
    @video_src= "//www.youtube.com/embed/#{@video.source}"
  end

  def play
    # @video_src = "//www.youtube.com/embed/#{@video.source}"
    @videos = Video.all
  end

  # GET /videos/new
  def new
    @video = Video.new
  end

  # GET /videos/1/edit
  def edit
  end

  # POST /videos
  # POST /videos.json
  def create
    @video = Video.new(video_params)

    respond_to do |format|
      if @video.save
        format.html { redirect_to admin_path, notice: 'Video was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /videos/1
  # PATCH/PUT /videos/1.json
  def update
    respond_to do |format|
      if @video.update(video_params)
        format.html { redirect_to admin_path, notice: 'Video was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @video.destroy
    respond_to do |format|
      format.html { redirect_to admin_path, notice: 'Video was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video
      @video = Video.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_params
      params.require(:video).permit(:title, :source)
    end
end
