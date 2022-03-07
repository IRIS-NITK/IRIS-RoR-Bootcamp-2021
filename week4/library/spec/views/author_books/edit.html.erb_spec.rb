require 'rails_helper'

RSpec.describe "author_books/edit", type: :view do
  before(:each) do
    @author_book = assign(:author_book, AuthorBook.create!())
  end

  it "renders the edit author_book form" do
    render

    assert_select "form[action=?][method=?]", author_book_path(@author_book), "post" do
    end
  end
end
