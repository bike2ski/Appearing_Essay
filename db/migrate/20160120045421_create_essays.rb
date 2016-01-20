class CreateEssays < ActiveRecord::Migration
  def change
    create_table :essays do |t|
      t.string :title
      t.string :author
      t.text :text

      t.timestamps null: false
    end
  end
end
