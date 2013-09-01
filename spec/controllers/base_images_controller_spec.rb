require 'spec_helper'

describe BaseImagesController do
  describe 'GET index' do
    before do
      BaseImage.create(image: 'test.iso', title: 'A', desc: 'B')
      BaseImage.create(image: 'test.iso', title: 'C', desc: 'D')
    end

    it 'renders all Base Images' do
      get :index

      expect(response.status).to eq(200)
      expect(response.body).to eq BaseImage.all.to_json

      base_images = JSON.parse(response.body)
      expect(base_images.size).to eq 2
      expect(base_images.collect{ |bi| bi['title']}).to match_array %w[A C]
    end
  end

  describe 'GET show' do
    before do
      @base_image = BaseImage.create(image: 'test.iso', title: 'A', desc: 'B')
    end

    it 'renders given Base Image' do
      get :show, id: @base_image.id

      expect(response.status).to eq(200)
      expect(response.body).to eq @base_image.to_json
    end
  end
end
