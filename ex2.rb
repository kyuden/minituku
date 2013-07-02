def clever_print(*args)
  args.map!{|arg| arg.to_a if arg.class != String }
  puts args.join(" ")
end

clever_print(["Ruby"], "the", ["Programming", "Language"])
clever_print(["Agile", "Web", "Development"], "with", { :Rails => 3.0 })