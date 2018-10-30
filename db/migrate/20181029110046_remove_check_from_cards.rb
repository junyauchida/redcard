class RemoveCheckFromCards < ActiveRecord::Migration[5.2]
  def change
    remove_column :cards, :check, :string
  end
end
