class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.string :message
      t.integer :user_id
      t.integer :thre_id
      t.binary :image
      t.datetime :tdate

      t.timestamps
    end
  end
end
