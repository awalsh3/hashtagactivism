# frozen_string_literal: true

class CreateActions < ActiveRecord::Migration[7.0]
  def change
    create_table :actions do |t|
      t.boolean :completed
      t.references :user, null: false, foreign_key: true
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
