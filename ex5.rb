def buy_tickets(*args)
  if args.size >= 4
    puts "Buying a group ticket for " + args.join(" ,")
  else
    args.each do |arg|
       puts "Buying a ticket " + arg
    end
  end
end

buy_tickets("Sam", "Dave", "David")
buy_tickets("John", "Paul", "Ringo", "George")