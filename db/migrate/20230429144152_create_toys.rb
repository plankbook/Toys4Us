class CreateToys < ActiveRecord::Migration[7.0]
  def change
    create_table :toys do |t|
      t.string :name
      t.text :description
      t.float :price
      t.boolean :listed
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
