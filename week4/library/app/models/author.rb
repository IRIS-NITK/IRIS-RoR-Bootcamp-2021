class Author < ApplicationRecord
    belongs_to :book
    validate :phone_number_should_be_10_digits
  def phone_number_should_be_10_digits
    if phone.length()!=10
      errors.add(:phone,"Should be 10 digits long")
    end
  end
  def full_name
      "#{self.first_name} #{self.last_name}"
  end
  
end
