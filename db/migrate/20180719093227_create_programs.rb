class CreatePrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :programs do |t|
      t.string :title
      t.string :purpose
      t.string :goal
      t.integer :quantification
      t.string :category
      t.date :deadline
      t.text :contents
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
