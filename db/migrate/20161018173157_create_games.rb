class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.integer :sender_id
      t.references :question, foreign_key: true
      t.boolean :active
      t.boolean :win

      t.timestamps
    end
  end
end
