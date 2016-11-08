# frozen_string_literal: true

# a book
class Book < ApplicationRecord
  validates :title, presence: true
end
