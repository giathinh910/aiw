class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :role
      t.string :avatar
      t.string :social_facebook
      t.string :social_twitter
      t.string :social_gplus

      t.timestamps
    end
  end
end
