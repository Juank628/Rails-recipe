class ChangePreparationTimeDatatypeInRecipes < ActiveRecord::Migration[7.0]
  def up
    change_column :recipes, :preparation_time, :decimal, using: 'preparation_time::decimal'
  end

  def down
    change_column :recipes, :preparation_time, :string
  end
end
