require 'rails_helper'

RSpec.describe ApiRetriever, type: :model do
  describe "#call" do
    context "with wrong url" do
      subject { ApiRetriever.call("http://ddragon.leagueoflegends.com/real/br.json") }

      it "return ApiRetrieverError when accessing an unknown uri" do
        expect(subject.class).to eq(ApiRetrieverError)
      end
    end
  end
end