class CreateSuvivors < ActiveRecord::Migration[5.2]
  def change
    create_table :suvivors do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.integer :location

      t.timestamps
    end
  end
end
