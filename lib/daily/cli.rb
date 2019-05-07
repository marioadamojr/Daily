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
    @deals = Daily::Deal.today
    @deals.each_with_index do |deal, i|
      puts "#{i+1}. #{deal.name}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the deal you'd like more info on or type list to see the deals again or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        puts @deals[input.to_i-1]
      elsif input == "list"
        list_deals
      else
        puts "Please select a valid option, 1, 2, list, or exit"
      end
    end
  end

  def goodbye
    puts "See you tomorrow for more deals."
  end

end
