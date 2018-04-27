class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :review
      t.integer :rating, default: 0
      t.references :chef, index: true, foreign_key: { to_table: :users}, null: false
      t.references :customer, index: true, foreign_key: { to_table: :users}, null: false

      t.timestamps
    end
  end
end
