class CreateSurvivors < ActiveRecord::Migration[5.2]
  def change
    create_table :survivors do |t|
      t.string :name, null: false, default: ''
      t.integer :age, null: false, default: ''
      t.string :gender, null: false, default: ''
      t.float :latitude, null: false, default: ''
      t.float :longitude, null: false, default: ''

      t.timestamps
    end
  end
end
