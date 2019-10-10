require_relative '../lib/Dark_trader'

describe "get_townhall_email" do
    it "gets townhall email" do
      expect(get_townhall_email(AVERNES)).to eq("mairie.avernes@orange.fr")
    end
end