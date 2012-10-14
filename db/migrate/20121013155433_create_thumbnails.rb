#coding: utf-8
class CreateThumbnails < ActiveRecord::Migration
  def change
    create_table :thumbnails do |t|
      t.attachment :image
      t.string :title
      t.text :content

      t.string :link_url
      t.string :link_text, default: "Читать далее"

      t.integer :owner_id
      t.string :owner_type

      t.timestamps
    end
  end
end
