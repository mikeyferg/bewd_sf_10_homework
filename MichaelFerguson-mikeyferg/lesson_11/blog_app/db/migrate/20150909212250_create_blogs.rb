class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.string :author
      t.boolean :private

      t.timestamps null: false
    end
  end
end
