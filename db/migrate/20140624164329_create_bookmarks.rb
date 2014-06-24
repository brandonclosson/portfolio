class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :name
      t.text :description
      t.belongs_to :language, index: true
      t.string :url
    end
  end
end
