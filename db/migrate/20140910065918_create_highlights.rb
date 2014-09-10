class CreateHighlights < ActiveRecord::Migration
  def change
    create_table :highlights do |t|
      t.string :title
      t.text :description
      t.string :slug
      t.timestamps
    end
  end
end
