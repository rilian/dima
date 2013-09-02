class CreateBaseImages < ActiveRecord::Migration
  def change
    create_table :base_images do |t|
      t.string :image_name
      t.string :title
      t.text :desc

      t.timestamps
    end
  end
end
