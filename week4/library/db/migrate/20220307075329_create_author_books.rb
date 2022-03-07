class CreateAuthorBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :author_books do |t|
      t.string :book_id
      t.string :author_id
      t.timestamps
    end
  end
end
