# frozen_string_literal: true

class CreateEspressos < ActiveRecord::Migration
  def change
    create_table :espressos do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
