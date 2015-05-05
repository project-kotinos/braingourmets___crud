module Animal
  class Dog < ActiveRecord::Base
    validates :title, presence: true
  end
end
