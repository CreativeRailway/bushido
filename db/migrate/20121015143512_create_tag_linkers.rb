class CreateTagLinkers < ActiveRecord::Migration
  def change
    create_table :tag_linkers do |t|
      t.integer :tag_id
      t.integer :article_id

      t.timestamps
    end
  end
end
