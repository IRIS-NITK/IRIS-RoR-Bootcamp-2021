class AddAuthorIdToAuthorBook < ActiveRecord::Migration[6.1]
  def change
    add_column :author_books, :author_id, :integer
  end
end
