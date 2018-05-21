class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.integer :rental_rate
      t.text :description
      t.references :user
      t.boolean :available
      t.string :photo
      t.timestamps
    end
  end
end
