class CreateServices < ActiveRecord::Migration[7.1]
  def change
    create_table :services do |t|
      t.references :client, foreign_key: true
      t.references :transfer, foreign_key: true
      t.references :flight, foreign_key: true
      t.references :hotel, foreign_key: true

      t.timestamps
    end
  end
end
