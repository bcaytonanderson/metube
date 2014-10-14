require 'rails_helper'

RSpec.describe MoviesController, :type => :controller do

  describe "GET show_gladiator" do
    it "returns http success" do
      get :show_gladiator
      expect(response).to have_http_status(:success)
    end
  end

end
