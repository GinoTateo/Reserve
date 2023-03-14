class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.belongs_to :table, null: false, foreign_key: true
      t.datetime :date
      t.string :name

      t.timestamps
    end
  end
end
