class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :role
      t.string :username
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.string :city

      t.timestamps
    end
  end
end
