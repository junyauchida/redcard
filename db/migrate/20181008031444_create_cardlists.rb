class CreateCardlists < ActiveRecord::Migration[5.2]
  def change
    create_table :cardlists do |t|
   #create_table :cardlists,options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.text :cardlist_name
      t.integer :user_id

      t.timestamps
    end
  end
end
