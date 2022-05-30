class CreateChefs < ActiveRecord::Migration[7.0]
  def change
    create_table :chefs do |t|
      t.string :cuisine
      t.string :speciality
      t.text :profile
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
