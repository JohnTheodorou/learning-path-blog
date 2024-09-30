class MoveBodyToActionText < ActiveRecord::Migration[7.2]
  def change
    BlogPost.all.find_each do |blog_post|
      blog_post.update(content: blog_post.text)
    end

    remove_column :blog_posts, :text
  end
end
