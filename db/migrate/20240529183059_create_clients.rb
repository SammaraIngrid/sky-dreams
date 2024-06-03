class CreateClients < ActiveRecord::Migration[7.1]
  def change
    create_table :clients do |t|
      t.string :name, null: false
      t.string :document, null: false
      t.string :email, null: false
      t.string :phone, null: false
      t.date :birth_date, null: false
      t.string :gender, null: false
      t.string :passport, null: false
      t.string :nationality, null: false
      t.string :image
      t.boolean :status, default: 'active'

      t.references :created_by, foreign_key: { to_table: :users }
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
