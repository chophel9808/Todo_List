class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :description
      t.string :isComplete

      t.timestamps
    end
  end
end
