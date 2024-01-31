class CreateToDoItems < ActiveRecord::Migration[7.1]
  def change
    create_table :to_do_items do |t|
      t.string :description
      t.references :to_do_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
