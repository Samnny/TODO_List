class CreateToDoLists < ActiveRecord::Migration[7.1]
  def change
    create_table :to_do_lists do |t|
      t.string :name

      t.timestamps
    end
  end
end
