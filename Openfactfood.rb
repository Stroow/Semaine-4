require 'open-uri'
require 'json'

loop do

puts "Entrer un numero de Code Barre"
bar-code = gets.chomp

utl="http://fr.openfoodfacts.org/api/v0/produit/#{bar_code}.json"

json = open(url).read

data = JSON.parse(json)

puts data['product']['product_name']['status']

end