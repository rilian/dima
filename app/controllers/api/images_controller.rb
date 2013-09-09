class Api::ImagesController < Api::BaseController
  def index
    respond_with :api, Image.all
  end

  def show
    respond_with :api, Image.find(params[:id])
  end

  def create
    respond_with :api, Image.create(image_params)
  end

  def edit
    respond_with :api, Image.find(params[:id])
  end

  def update
    respond_with :api, Image.find(params[:id]).update(image_params)
  end

  def destroy
    respond_with :api, Image.destroy(params[:id])
  end

  private

  def image_params
    params.require(:image).permit(:title, :description)
  end
end
