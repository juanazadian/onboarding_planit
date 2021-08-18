# frozen_string_literal: true

class Provider < ApplicationRecord
  belongs_to :category
  has_many :products
end
