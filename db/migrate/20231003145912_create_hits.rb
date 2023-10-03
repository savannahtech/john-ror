class CreateHits < ActiveRecord::Migration[7.0]
  def change
    create_table :hits do |t|
      t.integer :user_id, null: false
      t.string :endpoint, null: false
      t.datetime :created_at, null: false

      # Add indexes
      t.index :id, unique: true
      t.index :user_id

      t.timestamps
    end
  end
end
