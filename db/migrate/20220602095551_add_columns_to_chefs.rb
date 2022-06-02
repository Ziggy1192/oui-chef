class AddColumnsToChefs < ActiveRecord::Migration[7.0]
  def change
    add_column :chefs, :vegan, :boolean, default: false
    add_column :chefs, :vegetarian, :boolean, default: false
    add_column :chefs, :meat, :boolean, default: false
    add_column :chefs, :fish, :boolean, default: false
    add_column :chefs, :dessert, :boolean, default: false
  end
end
