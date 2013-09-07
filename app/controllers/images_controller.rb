class ImagesController < ApplicationController

  # GET /api/images
  # GET /api/images.json
  def index
    render json: Image.all
  end

  # GET /api/images/:id
  # GET /api/images/:id.json
  def show
    render json: Image.find(params[:id])
  end
end
