# frozen_string_literal: true

class CreateCats < ActiveRecord::Migration[5.0]
  def change
    create_table :cats do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
