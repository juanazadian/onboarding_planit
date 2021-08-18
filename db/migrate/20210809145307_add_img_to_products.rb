# frozen_string_literal: true

class AddImgToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :img, :string
  end
end
