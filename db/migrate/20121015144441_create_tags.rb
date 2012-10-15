class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :title
      t.attachment :image

      t.timestamps
    end
  end
end
