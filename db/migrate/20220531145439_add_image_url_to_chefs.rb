class AddImageUrlToChefs < ActiveRecord::Migration[7.0]
  def change
    add_column :chefs, :img_url, :string
  end
end
