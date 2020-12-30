class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :logo
      t.float :internet_plan
      t.float :tv_plan
      t.float :internet_tv_plan
      t.integer :number_of_channels
      t.text :special_offer
      t.float :speed
      t.string :plans_link
      t.string :coverage_map
      t.string :phone
      

      t.timestamps
    end
  end
end

