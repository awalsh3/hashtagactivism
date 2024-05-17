# frozen_string_literal: true

class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :content
      t.integer :time
      t.string :url
      t.references :cause, null: false, foreign_key: true

      t.timestamps
    end
  end
end
