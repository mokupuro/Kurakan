class CreateCirclePostImages < ActiveRecord::Migration[6.1]
  def change
    create_table :circle_post_images do |t|
      t.references :image, null: false, foreign_key: true
      t.references :circle_post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
