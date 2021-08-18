# frozen_string_literal: true

class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :product

  delegate :cost, to: :product, prefix: true
  delegate :name, to: :product, prefix: true
end
