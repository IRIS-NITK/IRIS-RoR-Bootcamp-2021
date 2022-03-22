class AddBookIdToAuthorBook < ActiveRecord::Migration[6.1]
  def change
    add_column :author_books, :book_id, :integer
  end
end
