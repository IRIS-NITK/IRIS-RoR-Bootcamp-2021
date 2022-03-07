require 'rails_helper'

RSpec.describe "author_books/show", type: :view do
  before(:each) do
    @author_book = assign(:author_book, AuthorBook.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
