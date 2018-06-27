class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.date :birth
      t.text :address
      t.string :email
      t.string :category
      t.text :comment

      t.timestamps
    end
  end
end
