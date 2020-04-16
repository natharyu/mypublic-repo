require 'nokogiri'
require 'open-uri'

# Function to retrieve the mail addresse of the Mairie from www.annuaire-des-mairies.com/95/ website
def fetch_mairie_email(mairie_url)
    page = Nokogiri::HTML(URI(mairie_url).open())
    mail = page.xpath('//tr[@class="txt-primary tr-last"]/td[contains(text(), "@")]').text()
    return mail
end

# Fetch all Mairie names
def fetch_all_mairie_urls()
    page = Nokogiri::HTML(URI("https://www.annuaire-des-mairies.com/val-d-oise.html").open())
    links = page.xpath('//a[@class="lientxt"]')

    all_links = []
    links.each do |link|
        all_links << link.attr('href')
    end

    return all_links
end

def print_all_emails(all_mairie_links)
    all_mairie_links.each do |mairie_url|
        print mairie_url[5..-6].upcase
        print ' : '
        puts fetch_mairie_email("https://www.annuaire-des-mairies.com/" + mairie_url)
    end
end

def main()
    mairie_urls = fetch_all_mairie_urls()
    print_all_emails(mairie_urls)
end

main()

