class CreateTrainings < ActiveRecord::Migration[5.1]
  def change
    create_table :trainings do |t|
      t.string :purpose
      t.string :goal
      t.integer :quantification
      t.text :supplement
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
