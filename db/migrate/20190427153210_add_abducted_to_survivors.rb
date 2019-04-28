class AddAbductedToSurvivors < ActiveRecord::Migration[5.2]
  def change
    add_column :survivors, :abducted, :boolean, :default => false
  end
end
