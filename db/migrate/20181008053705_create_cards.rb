class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.text :card_name
      t.string :no
      t.text :front
      t.text :back
      t.string :check
      t.integer :cardlist_id

      t.timestamps
    end
  end
end
