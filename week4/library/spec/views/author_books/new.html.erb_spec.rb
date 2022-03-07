require 'rails_helper'

RSpec.describe "author_books/new", type: :view do
  before(:each) do
    assign(:author_book, AuthorBook.new())
  end

  it "renders new author_book form" do
    render

    assert_select "form[action=?][method=?]", author_books_path, "post" do
    end
  end
end
