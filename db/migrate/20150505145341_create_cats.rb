# frozen_string_literal: true

class CreateCats < ActiveRecord::Migration[4.2]
  def change
    create_table :cats do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
