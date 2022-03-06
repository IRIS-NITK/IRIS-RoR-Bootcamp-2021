class Book < ApplicationRecord
  belongs_to :publication  
  has_many :authors
  has_one :publication
  validates :title, presence: true, uniqueness: true
  validates :publication, presence: true
  @books = Book.all
  def citation_info
      "Title: #{self.title}, Author: #{self.authors.all} "
  end
  
end
