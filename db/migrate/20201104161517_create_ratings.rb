class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.integer "user_id"
      t.integer "num"
      t.integer "subject_id"
      t.string "subject_type"

      t.timestamps
    end
  end
end
