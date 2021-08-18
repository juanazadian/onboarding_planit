# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :cost
      t.references :provider, null: false, foreign_key: true

      t.timestamps
    end

    add_index :products, :name, unique: true
  end
end
