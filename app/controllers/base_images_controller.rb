class BaseImagesController < ApplicationController
  def index
    @base_images = BaseImage.all
  end
end
