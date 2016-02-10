# frozen_string_literal: true

# a book
class Book < ActiveRecord::Base
  validates :title, presence: true
end
