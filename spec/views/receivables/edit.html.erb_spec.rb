require 'rails_helper'

RSpec.describe "receivables/edit", type: :view do
  before(:each) do
    @receivable = assign(:receivable, Receivable.create!(
      title: "MyString",
      description: "MyText",
      value: "9.99",
      user: nil
    ))
  end

  it "renders the edit receivable form" do
    render

    assert_select "form[action=?][method=?]", receivable_path(@receivable), "post" do

      assert_select "input[name=?]", "receivable[title]"

      assert_select "textarea[name=?]", "receivable[description]"

      assert_select "input[name=?]", "receivable[value]"

      assert_select "input[name=?]", "receivable[user_id]"
    end
  end
end
