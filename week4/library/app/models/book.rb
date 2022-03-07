class Book < ApplicationRecord
    has_many :authors
    has_one :publication
    validates :publication, presence: true
    validates :authors, presence: true
    validates :title, presence: true, uniqueness: true
    def citation_info
        "Title: #{self.title}, Authors: #{self.authors.all}, Info: #{self.abstract}"
    end
end
