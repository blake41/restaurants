class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :client_id
      t.integer :table_id
      t.time :res_time

      t.timestamps null: false
    end
  end
end
