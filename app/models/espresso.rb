# an espresso flavor
class Espresso < ActiveRecord::Base
  validates :title, presence: true
end
