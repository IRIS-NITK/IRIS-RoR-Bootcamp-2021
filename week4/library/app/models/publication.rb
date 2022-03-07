class Publication < ApplicationRecord
    has_many :books
    belongs_to :book
    validates :name, presence: true
    def book_count
        Book.all.count
    end
end
