class CreateTransfers < ActiveRecord::Migration[7.1]
  def change
    create_table :transfers do |t|
      t.decimal :value
      t.datetime :schedule
      t.integer :duration

      t.references :origin, foreign_key: true
      t.references :destiny, foreign_key: true

      t.timestamps
    end
  end
end
