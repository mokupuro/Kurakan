class CreateCircleAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :circle_accounts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :circle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
