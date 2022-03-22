class AddBookIdToPublication < ActiveRecord::Migration[6.1]
  def change
    add_column :publications, :book_id, :integer
  end
end
