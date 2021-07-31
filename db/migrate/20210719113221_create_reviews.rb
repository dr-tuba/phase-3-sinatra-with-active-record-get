class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :score
      t.string :comment
      t.belongs_to :game, foreign_key: true, null: false # this is our foreign key
      t.belongs_to :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
