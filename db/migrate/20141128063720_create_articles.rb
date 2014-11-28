class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :feature_image
      t.string :brief
      t.integer :admin_user_id
      t.text :content

      t.timestamps
    end
  end
end
