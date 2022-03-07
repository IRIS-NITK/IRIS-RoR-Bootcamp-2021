require 'rails_helper'

RSpec.describe "authors/index", type: :view do
  before(:each) do
    assign(:authors, [
      Author.create!(
        fname: "Fname",
        lname: "Lname",
        phone: 2
      ),
      Author.create!(
        fname: "Fname",
        lname: "Lname",
        phone: 2
      )
    ])
  end

  it "renders a list of authors" do
    render
    assert_select "tr>td", text: "Fname".to_s, count: 2
    assert_select "tr>td", text: "Lname".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
