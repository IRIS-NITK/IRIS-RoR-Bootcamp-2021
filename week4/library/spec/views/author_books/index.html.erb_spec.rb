require 'rails_helper'

RSpec.describe "author_books/index", type: :view do
  before(:each) do
    assign(:author_books, [
      AuthorBook.create!(),
      AuthorBook.create!()
    ])
  end

  it "renders a list of author_books" do
    render
  end
end
