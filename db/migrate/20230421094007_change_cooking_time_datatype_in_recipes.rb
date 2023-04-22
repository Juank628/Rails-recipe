class ChangeCookingTimeDatatypeInRecipes < ActiveRecord::Migration[7.0]
  def up
    change_column :recipes, :cooking_time, :decimal, using: 'cooking_time::decimal'
  end

  def down
    change_column :recipes, :cooking_time, :string
  end
end
