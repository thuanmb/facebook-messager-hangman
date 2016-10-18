class CreateResponses < ActiveRecord::Migration[5.0]
  def change
    create_table :responses do |t|
      t.references :game, foreign_key: true
      t.string :content
      t.datetime :sent_at

      t.timestamps
    end
  end
end
