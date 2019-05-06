class Daily::Deal

  def self.today
    # I should return a bunch of instance of deals
    puts <<-DOC.gsub /^\s*/, ""
      1. Product 1
      2. Product 2
    DOC
  end

end
