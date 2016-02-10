# frozen_string_literal: true

# animals
module Animal
  # a cat
  class Cat < ActiveRecord::Base
    validates :title, presence: true
  end
end
