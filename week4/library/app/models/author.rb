class Author < ApplicationRecord
  has_many :author_books
  has_many :books, through: :author_books
  validates :fname, presence: true
  validates :lname, presence: true
  validates :phone, presence: true, uniqueness: true, length: 10..10

  def full_name
    "#{self.fname} #{self.lname}"
  end
end
