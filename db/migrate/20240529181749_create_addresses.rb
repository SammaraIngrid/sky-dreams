class CreateAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses do |t|
      t.string :zip_code, null: false
      t.string :country, null: false
      t.string :street, null: false
      t.string :number,  default: 0
      t.string :neighborhood, null: false
      t.string :state, null: false
      t.string :city, null: false
      t.string :complement

      t.timestamps
    end
  end
end
