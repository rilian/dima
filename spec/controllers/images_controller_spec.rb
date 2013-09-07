require 'spec_helper'

describe ImagesController do
  describe 'GET index' do
    before do
      Image.create(image_name: 'test.iso', title: 'A', desc: 'B')
      Image.create(image_name: 'test.iso', title: 'C', desc: 'D')
    end

    it 'renders all Base Images' do
      get :index

      expect(response.status).to eq(200)
      expect(response.body).to eq Image.all.to_json

      images = JSON.parse(response.body)
      expect(images.size).to eq 2
      expect(images.collect{ |bi| bi['title']}).to match_array %w[A C]
    end
  end

  describe 'GET show' do
    before do
      @image = Image.create(image_name: 'test.iso', title: 'A', desc: 'B')
    end

    it 'renders given Base Image' do
      get :show, id: @image.id

      expect(response.status).to eq(200)
      expect(response.body).to eq @image.to_json
    end
  end
end
