class Daily::Deal
  attr_accessor :name, :price, :availability, :url

  def self.today
    # I should return a bunch of instance of deals
    # puts <<-DOC.gsub /^\s*/, ""
    #   1. Product 1
    #   2. Product 2
    # DOC

    # scrap Meh and Woot to get real data
    self.scrape_deals
  end

  def self.scrape_deals
    deals = []

    deals << self.scrape_woot
    deals << self.scrape_meh

    #the following is dummy data, used to make sure the project is set up correctly so when I scrape everything works

    # deal_1 = self.new
    # deal_1.name = "Umbrella"
    # deal_1.price = "$10"
    # deal_1.availability = true
    # deal_1.url = "https://meh.com"
    #
    # deal_2 = self.new
    # deal_2.name = "MacBook Pro"
    # deal_2.price = "$1,329.99"
    # deal_2.availability = true
    # deal_2.url = "https://www.woot.com/offers/apple-13-intel-i5-macbook-pro-2018-2020"

    # deals = [deal_1, deal_2]
    deals
  end

  def self.scrape_woot
    doc = Nokogiri::HTML(open("https://www.woot.com/"))

    deal = self.new
    deal.name = doc.search("h2.main-title").text
    deal.price = doc.search("#todays-deal span.price.min").text
    deal.availability = true #dummy data, hard to set up when available
    deal.url = doc.search("a.wantone").first.attr("href")
    deal
  end

  def self.scrape_meh
    doc = Nokogiri::HTML(open("https://www.meh.com/"))

    deal = self.new
    deal.name = doc.search("section.features h2").text.strip
    deal.price = doc.search("button.buy-button").text.strip.gsub("Buy it", "").strip
    deal.availability = true #dummy data, hard to set up when available
    deal.url = "https://meh.com"
    deal
  end

end
