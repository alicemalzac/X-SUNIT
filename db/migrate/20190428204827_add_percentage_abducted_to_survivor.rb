class AddPercentageAbductedToSurvivor < ActiveRecord::Migration[5.2]
  def change
    add_column :survivors, :percentage_abducted, :float
  end
end
