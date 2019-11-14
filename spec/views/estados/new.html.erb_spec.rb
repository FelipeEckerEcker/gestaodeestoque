require 'rails_helper'

RSpec.describe "estados/new", type: :view do
  before(:each) do
    assign(:estado, Estado.new(
      :nome => "MyString"
    ))
  end

  it "renders new estado form" do
    render

    assert_select "form[action=?][method=?]", estados_path, "post" do

      assert_select "input[name=?]", "estado[nome]"
    end
  end
end
