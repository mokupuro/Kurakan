class CreateCircles < ActiveRecord::Migration[6.1]
  def change
    create_table :circles do |t|
      t.string :name, null: false, default: ''
      t.string :description, default: ''
      t.string :active_place, default: ''
      t.integer :number_of_people, null: false, default: 0
      t.string :link, default: ''

      t.timestamps
    end
  end
end
