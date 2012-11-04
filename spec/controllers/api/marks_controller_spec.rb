require 'spec_helper'

describe Api::MarksController do
  describe "GET #index" do
    let!(:mark) { FactoryGirl.create(:mark) }

    context "with no search query" do
      let(:params) {{ format: :json }}

      before { get :index, params }

      it "fetches the marks" do
        assigns(:marks).should eq [mark]
      end
    end

    context "with a search query" do
      let(:params) {{ format: :json, query: 'Chungking' }}
      let!(:searched_mark) { FactoryGirl.create(:mark, title: 'Chungking Express') }

      before { get :index, params }

      it "returns only the searched for mark" do
        assigns(:marks).should eq [searched_mark]
      end
    end
  end
end
