# frozen_string_literal: true

# an espresso flavor
class Espresso < ApplicationRecord
  validates :title, presence: true
end
