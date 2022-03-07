class Author < ApplicationRecord
    belongs_to :book
    validates :fname, presence: true
    validates :lname, presence: true
    validates :phone, presence: true
    validates_length_of :phone, is: 10
    def full_name
        "#{self.fname} #{self.lname}"
    end
end
