# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :provider
  has_many :purchases
end
