module Animal
  class Cat < ActiveRecord::Base
    validates :title, presence: true
  end
end
