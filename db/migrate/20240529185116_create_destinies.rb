class CreateDestinies < ActiveRecord::Migration[7.1]
  def change
    create_table :destinies do |t|
      t.string :name
      t.references :addresses

      t.timestamps
    end
  end
end
