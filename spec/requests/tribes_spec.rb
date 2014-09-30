require 'rails_helper'

RSpec.describe "Tribes", :type => :request do
  describe "GET /tribes" do
    it "works! (now write some real specs)" do
      get tribes_path
      expect(response.status).to be(200)
    end
  end
end
