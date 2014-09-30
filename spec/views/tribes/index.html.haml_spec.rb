require 'rails_helper'

RSpec.describe "tribes/index", :type => :view do
  before(:each) do
    assign(:tribes, [
      Tribe.create!(),
      Tribe.create!()
    ])
  end

  it "renders a list of tribes" do
    render
  end
end
