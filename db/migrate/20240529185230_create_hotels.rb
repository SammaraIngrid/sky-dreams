class CreateHotels < ActiveRecord::Migration[7.1]
  def change
    create_table :hotels do |t|
      t.string :name
      t.decimal :value
      t.string :category
      t.integer :day

      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
