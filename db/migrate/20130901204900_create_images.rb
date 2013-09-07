class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image_name
      t.string :title
      t.text :desc

      t.timestamps
    end
  end
end
