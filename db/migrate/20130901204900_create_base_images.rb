class CreateBaseImages < ActiveRecord::Migration
  def change
    create_table :base_images do |t|
      t.string :image
      t.string :title
      t.text :desc

      t.timestamps
    end
  end
end
