require 'rails_helper'

RSpec.describe "tribes/new", :type => :view do
  before(:each) do
    assign(:tribe, Tribe.new())
  end

  it "renders new tribe form" do
    render

    assert_select "form[action=?][method=?]", tribes_path, "post" do
    end
  end
end
