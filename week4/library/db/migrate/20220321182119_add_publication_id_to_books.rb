class AddPublicationIdToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :publication_id, :integer
  end
end
