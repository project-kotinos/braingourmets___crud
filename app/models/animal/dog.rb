# frozen_string_literal: true

# animals
module Animal
  # a dog
  class Dog < ApplicationRecord
    validates :title, presence: true
  end
end
