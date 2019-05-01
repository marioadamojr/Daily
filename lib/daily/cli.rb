# Our CLI Controller
class Daily::CLI

  def call
    list_deals
    menu
  end

  def list_deals
    #here doc
    puts "Today's Daily Deals:"
    puts <<-DOC.gsub /^\s*/, ""
      1. Product 1
      2. Product 2
    DOC
  end

  def menu
    puts "Enter the number of the deal you'd like more info on:"
    TEST
  end

end
