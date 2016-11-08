# frozen_string_literal: true

# animals
module Animal
  # a cat
  class Cat < ApplicationRecord
    validates :title, presence: true
  end
end
