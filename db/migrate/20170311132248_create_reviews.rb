class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
t.string :title
t.text :body

t.references :city, foreign_key: true
      t.timestamps null: false
    end
  end
end
