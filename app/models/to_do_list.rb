class ToDoList < ApplicationRecord
    has_many :to_do_items, dependent: :destroy
end
