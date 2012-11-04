require 'spec_helper'

describe Api::MarksController do
  let(:params) {{ format: :json }}

  describe "GET #index" do
    let!(:mark) { FactoryGirl.create(:mark) }

    before do
      get :index
    end

    it "fetches the marks" do
      assigns(:marks).should eq [mark]
    end
  end
end
