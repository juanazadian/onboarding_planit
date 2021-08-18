# frozen_string_literal: true

class AddDescToProviders < ActiveRecord::Migration[6.1]
  def change
    add_column :providers, :desc, :text
  end
end
