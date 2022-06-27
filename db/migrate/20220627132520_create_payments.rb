class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :title
      t.text :description
      t.decimal :value
      t.date :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
