class BaseImagesController < ApplicationController

  # GET /api/base_images
  # GET /api/base_images.json
  def index
    render json: BaseImage.all
  end

  # GET /api/base_images/:id
  # GET /api/base_images/:id.json
  def show
    render json: BaseImage.find(params[:id])
  end
end
