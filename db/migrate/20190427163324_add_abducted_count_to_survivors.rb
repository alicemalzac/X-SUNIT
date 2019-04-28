class AddAbductedCountToSurvivors < ActiveRecord::Migration[5.2]
  def change
    add_column :survivors, :abductedcount, :integer, :default => 0
  end
end
