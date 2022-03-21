class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.text :text
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
