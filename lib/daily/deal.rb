class Daily::Deal
  attr_accessor :name, :price, :availability, :url

  def self.today
    # I should return a bunch of instance of deals
    # puts <<-DOC.gsub /^\s*/, ""
    #   1. Product 1
    #   2. Product 2
    # DOC
    deal_1 = self.new
    deal_1.name = "Umbrella"
    deal_1.price = "$10"
    deal_1.availability = true
    deal_1.url = "https://meh.com"

    deal_2 = self.new
    deal_2.name = "MacBook Pro"
    deal_2.price = "$1,329.99"
    deal_2.availability = true
    deal_2.url = "https://www.woot.com/offers/apple-13-intel-i5-macbook-pro-2018-2020"

    [deal_1, deal_2]
  end

end
