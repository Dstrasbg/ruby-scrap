require_relative '../lib/Dark_trader'

#va tester l'app du trader fou

describe "the Dark_trader" do 
    it "gives the name of the currency" do
      #test du nom de la crypto monnaie
      expect(name_currency)).to eq("BCH")
      expect(name_currency)).to eq("THETA")
    end
 end

 describe "the Dark_trader" do
    it "gives the price of the currency" do
      #test du prix de la crypto monnaie
      expect(price_currency)).to eq("231.13")
      expect(price_currency)).to eq("0.089943")
    end
 end