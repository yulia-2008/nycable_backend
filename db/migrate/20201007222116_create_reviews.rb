class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.string :text
      t.integer :object_id
      t.string :object_type

      t.timestamps
    end      
  end
end
