class CreateThres < ActiveRecord::Migration[5.2]
  def change
    create_table :thres do |t|
      t.string :title
      t.string :message
      t.integer :user_id
      t.datetime :t_date

      t.timestamps
    end
  end
end
