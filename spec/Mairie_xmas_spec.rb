require_relative '../lib/Mairie_xmas'

#va tester l'app scrap mails des Mairies

describe "the Mairie_xmas method" do
    it "gives the name of the town" do
      #test du scrap du nom de la Mairie
      expect(get_townhall_name("http://annuaire-des-mairies.com/95/aincourt.html")).to eq("AINCOURT")
      expect(get_townhall_name("http://annuaire-des-mairies.com/95/pontoise.html")).to eq("PONTOISE")
    end
 end

 describe "the Mairie_xmas method" do
    it "gives the email of the town" do
      #test du scrap mail de la Mairie
      expect(get_townhall_email("http://annuaire-des-mairies.com/95/aincourt.html")).to eq("mairie.aincourt@wanadoo.fr")
      expect(get_townhall_email("http://annuaire-des-mairies.com/95/pontoise.html")).to eq("mairie@ville-pontoise.fr")
    end
 end

 