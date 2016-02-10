# frozen_string_literal: true

# animals
module Animal
  # a dog
  class Dog < ActiveRecord::Base
    validates :title, presence: true
  end
end
