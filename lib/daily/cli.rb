# Our CLI Controller
class Daily::CLI

  def call
    list_deals
    menu
    goodbye
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
    puts "Enter the number of the deal you'd like more info on or type exit:"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on Deal 1..."
      when "2"
        puts "More info on Deal 2..."
      end
    end
  end

  def goodbye
    puts "See you tomorrow for more deals."
  end

end
