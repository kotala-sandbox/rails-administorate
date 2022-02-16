class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :title, null: false, default: ""
      t.timestamps
    end
    add_index :tickets, :title, unique: true
  end
end
