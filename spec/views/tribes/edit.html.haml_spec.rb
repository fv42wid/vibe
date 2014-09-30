require 'rails_helper'

RSpec.describe "tribes/edit", :type => :view do
  before(:each) do
    @tribe = assign(:tribe, Tribe.create!())
  end

  it "renders the edit tribe form" do
    render

    assert_select "form[action=?][method=?]", tribe_path(@tribe), "post" do
    end
  end
end
