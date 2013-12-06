def foo(&block)
  puts "== start of foo =="
  z=yield("asdf") # foo should be called with a block.  This line sends "asdf" as an argument to that block.
  puts z # the value returned from the block is stored in z

  puts "== alternate way to call block == "
  puts block.call("asdf")
  
  puts "== end of foo =="
end

foo {|x| puts "block ran with args, x=#{x}"; x }

puts "\n\n\n"

foo { puts "block ran without accepting args"; "no args" }


