class CreateBlogPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :blog_posts do |t|
      t.references :user
      t.string :title
      t.string :sub_title
      t.text :content
      t.timestamps
    end
  end
end
