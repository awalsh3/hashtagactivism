# frozen_string_literal: true

class CreateCauses < ActiveRecord::Migration[7.0]
  def change
    create_table :causes do |t|
      t.string :name

      t.timestamps
    end
  end
end
