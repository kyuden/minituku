module Mail
  def write(contents)
    @contents = contents
  end
  def send
    @datetime = Time.now
    puts @datetime
  end
  def to_s
    puts @datetime.strftime("%a %b %d %H:%M:%S %Y")
    puts "Dear " + @recipient
    puts @contents
    puts "Sincerely"
    puts @sender
  end

end

class Postcard
  include Mail
  
  def initialize(sender, recipient)
    @sender, @recipient = sender, recipient
  end
end
 
card = Postcard.new("Me", "Friend")
card.write("Did you forget my birthsday?")
card.send
puts "-" * 60
sleep(2)
puts card