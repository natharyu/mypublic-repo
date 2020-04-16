require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(URI("https://coinmarketcap.com/all/views/all/").open())

# crypto_name = page.xpath('//div[@class="cmc-table__column-name sc-1kxikfi-0 eTVhdN"]/a')

# crypto_name.each do |name|
#     # puts name.text
# end

# crypto_price = page.xpath('//td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__price"]/a')

# crypto_price.each do |price|
#     puts price.text
# end

array_crypto = []

# Get all crypto rows
rows = page.xpath('//tr[@class="cmc-table-row"]')

# For each crypto, get the name and price colomns
rows.each do |crypto|
    name = crypto.xpath('.//div[@class="cmc-table__column-name sc-1kxikfi-0 eTVhdN"]/a').text()
    price = crypto.xpath('.//td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__price"]/a').text()
    array_crypto << { name => price }
end

# [
#     {
#       "Bitcoin"=>"$7,021.08"
#     },
#     {"Bitcoin"=>"$7,021.08"},
#     {"Bitcoin"=>"$7,021.08"},
#     {"Bitcoin"=>"$7,021.08"},
# ]

array_crypto.each do |crypto|
    name, price = crypto.first
    puts name + " : " + price
end
# p array_crypto
