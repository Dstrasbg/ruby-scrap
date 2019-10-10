require_relative '../lib/Mairie_xmas'

describe "the Mairie_christmas method" do
    it "Give the name and the code postale of the town" do
      expect(get_townhall_name("http://annuaire-des-mairies.com/95/aincourt.html")).to eq("AINCOURT - 95510")
    end
 end

 describe "the Mairie_christmas method" do
    it "Give the email of the town" do
      expect(get_townhall_email("http://annuaire-des-mairies.com/95/aincourt.html")).to eq("mairie.aincourt@wanadoo.fr")
    end
 end

 