require 'rubygems'
require 'nokogiri'
require 'open-uri'

def crypto_scrapper
page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
puts page.class   # => on use la gem Nokogiri:sur le site des currencies

name_currency = page.xpath('//td[@class="text-left col-symbol"]').find_all
name_currency_array = name_currency.collect(&:text)
price_currency = page.xpath('//td[@class="no-wrap text-right"]/a').find_all
price_array = price_currency.collect(&:text)
price_array.map!{|number| number.delete("$").to_f}
final_hash = Hash[name_currency_array.zip(price_array)]

Hash.class_eval do
   def split_into(divisions)
     count = 0
     inject([]) do |final, key_value|
       final[count%divisions] ||= {}
       final[count%divisions].merge!({key_value[0] => key_value[1]})
       count += 1
       final
     end
   end
 end
puts final_hash.split_into(name_currency_array.size)
end
crypto_scrapper