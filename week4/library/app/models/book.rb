class Book < ApplicationRecord
  has_many :author_books
  has_many :authors, through: :author_books
  belongs_to :publication

  validates :title, presence: true, uniqueness: true
  validates :author_id, presence: true

  def citation_info
    "#{self.title}, written by- #{self.authors} is a #{self.abstract} published by #{self.publication.name}"
  end
end
