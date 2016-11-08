# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[4.2]
  def change
    create_table :books do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
