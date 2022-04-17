class CreateSeasons < ActiveRecord::Migration[6.1]
  def change
    create_table :seasons do |t|
      t.references :film, null: false, index: true, foreign_key: true
      t.integer :number
      t.string :title, null: false
      t.text :description
      t.date :release_date, null: false

      t.timestamps
    end
  end
end
