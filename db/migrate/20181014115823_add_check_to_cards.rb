class AddCheckToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :check, :boolean, default: false, null: false
  end
end
