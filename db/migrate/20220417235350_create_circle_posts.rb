class CreateCirclePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :circle_posts do |t|
      t.references :circle_account, null: false, foreign_key: true
      t.string :content, null: false, default: ""

      t.timestamps
    end
    add_index :circle_posts, [:circle_account_id, :created_at]
  end
end
