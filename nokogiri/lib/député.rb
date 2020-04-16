require 'nokogiri'
require 'open-uri'

def fetch_depute_urls()
    page = Nokogiri::HTML(URI("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique").open())
    urls = page.xpath('//div[@id="deputes-list"]//li/a')

    all_urls = []
    urls.each do |url|
        all_urls << url.attr('href')
    end

    return all_urls
end

def fetch_depute_info(url)
    depute = {}

    page = Nokogiri::HTML(URI("http://www2.assemblee-nationale.fr"+url).open())

    email = page.xpath('//a[contains(@href, "mailto:")]').first.attr('href')[7..-1]

    fullName = page.xpath('//div[@class = "titre-bandeau-bleu clearfix"]/h1').text()
    _, first_name, *last_name = fullName.split(' ')

    depute['first_name'] = first_name
    depute['last_name'] = last_name.join(' ')
    depute['email'] = email

    return depute
end


def main()
    all_deputes = []

    depute_urls = fetch_depute_urls()
    depute_urls.each do |depute_url|
        depute_info = fetch_depute_info(depute_url)
        all_deputes << depute_info
        puts depute_info
    end

    p all_deputes
end

main()

