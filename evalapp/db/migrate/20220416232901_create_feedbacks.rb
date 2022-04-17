class CreateFeedbacks < ActiveRecord::Migration[7.0]
  def change
    create_table :feedbacks do |t|
      t.integer :score
      t.text :comment

      t.timestamps
    end
  end
end
