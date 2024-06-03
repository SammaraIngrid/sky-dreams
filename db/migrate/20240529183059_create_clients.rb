class CreateClients < ActiveRecord::Migration[7.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :document
      t.string :email
      t.string :phone
      t.date :birth_date
      t.string :gender
      t.string :passport
      t.string :nationality
      t.string :image
      t.boolean :status, default: 'active'

      t.references :created_by, foreign_key: { to_table: :users }
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
