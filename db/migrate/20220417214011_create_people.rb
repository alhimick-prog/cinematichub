class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :first_name, null: false
      t.string :surname, null: false
      t.string :patronymic
      t.date :birthday

      t.timestamps
    end
  end
end
