# frozen_string_literal: true

# Creates posts table
class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :image

      t.timestamps
    end
  end
end
