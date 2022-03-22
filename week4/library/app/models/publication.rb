class Publication < ApplicationRecord
  has_many :books, dependent: :destroy
  validates :name, presence: true, uniqueness: true

  def self.book_count
    # Book.where(publication_id: self.id)
  end
end
