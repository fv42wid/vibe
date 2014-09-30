require 'rails_helper'

RSpec.describe "tribes/show", :type => :view do
  before(:each) do
    @tribe = assign(:tribe, Tribe.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
