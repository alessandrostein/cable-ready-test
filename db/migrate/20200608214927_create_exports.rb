# frozen_string_literal: true

class CreateExports < ActiveRecord::Migration[6.0]
  def change
    create_table :exports do |t|
      t.integer :status, default: 0
      t.timestamps
    end
  end
end
