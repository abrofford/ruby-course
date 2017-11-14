class BobResponse
  def initialize(user_input)
    @reply = user_input
  end

  def reply
    if @reply == "!"
      puts "Bob: Whoa, chill out!"
    elsif @reply == "?"
      puts "Bob: Sure."
    elsif @reply == "."
      puts "Bob: Whatever."
    else
      puts "Bob:  Fine. Be that way!"
    end
  end
end

puts "Ask Bob a question"
last_char = gets.chomp[-1]

coconout = BobResponse.new(last_char)
coconout.reply
