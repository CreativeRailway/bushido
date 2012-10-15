class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.text :content
      t.attachment :head_image
      t.boolean :visible, default: true, allow_nil: false

      t.integer :category_id

      t.timestamps
    end
  end
end
