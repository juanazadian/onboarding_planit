class CreateProviders < ActiveRecord::Migration[6.1]
  def change
    create_table :providers do |t|
      t.string :name
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end

    add_index :providers, :name,                unique: true
  end
end
