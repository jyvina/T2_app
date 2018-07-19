class CreateTrainings < ActiveRecord::Migration[5.1]
  def change
    create_table :trainings do |t|
      t.string :event
      t.string :quantification
      t.date :date
      t.time :time
      t.string :user
      t.text :comment
      t.references :program, foreign_key: true

      t.timestamps
    end
  end
end
